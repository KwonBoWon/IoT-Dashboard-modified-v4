import { apiClient } from '@/lib/api/apiClient';

export const getDevice = ({ deviceName }: { deviceName: string }) => {
  const response = apiClient.get(`/TinyIoT/${deviceName}`, {
    params: {
      fu: '1',
      ty: '3',
      lvl: '1',
    },
  });
  return response;
};

export const getDeviceVoltage = async ({
  deviceName,
}: {
  deviceName: string;
}) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: number;
    };
  }>(`/TinyIoT/${deviceName}/Sensors/Humid/la`);
  return response.data['m2m:cin'];
};

export const getDeviceEnergyConsumption = async ({
  deviceName,
}: {
  deviceName: string;
}) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: number;
    };
  }>(`/TinyIoT/${deviceName}/Sensors/CO2/la`);
  return response.data['m2m:cin'];
};

// export const getDeviceAmperage = async ({
//   deviceName,
// }: {
//   deviceName: string;
// }) => {
//   const response = await apiClient.get<{
//     'm2m:cin': {
//       con: number;
//     };
//   }>(`/TinyIoT/${deviceName}/current/data/la`);
//   return response.data['m2m:cin'];
// };

export const getDeviceVoltageUrls = async ({
  deviceName,
  lim,
}: {
  deviceName: string;
  lim?: string;
}) => {
  const response = await apiClient.get<{
    'm2m:uril': string[];
  }>(`/TinyIoT/${deviceName}/Sensors/Humid`, {
    params: {
      fu: '1',
      lim,
    },
  });
  return response.data['m2m:uril'];
};

export const getDeviceEnergyConsumptionUrls = async ({
  deviceName,
  lim,
}: {
  deviceName: string;
  lim?: string;
}) => {
  const response = await apiClient.get<{
    'm2m:uril': string[];
  }>(`/TinyIoT/${deviceName}/Sensors/CO2`, {
    params: {
      fu: '1',
      lim,
    },
  });
  return response.data['m2m:uril'];
};

export const getData = async (url: string) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: string;
    };
  }>(url);
  return response.data['m2m:cin'];
};

export const getDeviceCurrentUrls = async ({
  deviceName,
  lim,
}: {
  deviceName: string;
  lim?: string;
}) => {
  const response = await apiClient.get<{
    'm2m:uril': string[];
  }>(`/TinyIoT/${deviceName}/Sensors/Soil`, {
    params: {
      fu: '1',
      lim,
    },
  });
  return response.data['m2m:uril'];
};

export const getDeviceCurrent = async ({
  deviceName,
}: {
  deviceName: string;
}) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: number;
    };
  }>(`/TinyIoT/${deviceName}/Sensors/Soil/la`);
  return response.data['m2m:cin'];
};

export const getDeviceTemperatureUrls = async ({
  deviceName,
  lim,
}: {
  deviceName: string;
  lim?: string;
}) => {
  const response = await apiClient.get<{
    'm2m:uril': string[];
  }>(`/TinyIoT/${deviceName}/Sensors/Temperature`, {
    params: {
      fu: '1',
      lim,
    },
  });
  return response.data['m2m:uril'];
};

export const getDeviceTemperature = async ({
  deviceName,
}: {
  deviceName: string;
}) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: number;
    };
  }>(`/TinyIoT/${deviceName}/Sensors/Temperature/la`);
  return response.data['m2m:cin'];
};

export const getLocation = async ({ deviceName }: { deviceName: string }) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      ct: string;
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Temperature/location/la`);
  return response.data['m2m:cin'];
};

export const getBulbStatus = async ({ deviceName }: { deviceName: string }) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Actuator/Fan/la`);

  return response.data['m2m:cin'];
};

export const getBulbBright = async ({ deviceName }: { deviceName: string }) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Actuator/LED/la`);
  return response.data['m2m:cin'];
};

export const getSwitchStatus = async ({
  deviceName,
}: {
  deviceName: string;
}) => {
  const response = await apiClient.get<{
    'm2m:cin': {
      con: string;
    };
  }>(
    `/TinyIoT/${deviceName}/Actuator/Water/la`,
  );

  return response.data['m2m:cin'];
};

export const switchBulbStatus = async ({
  deviceName,
  status,
}: {
  deviceName: string;
  status: string;
}) => {
  const response = await apiClient.post<{
    'm2m:cin': {
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Actuator/Fan`, {
    'm2m:cin': {
      con: status,
    },
  });

  return response.data['m2m:cin'];
};

export const updateBulbBright = async ({
  deviceName,
  bright,
}: {
  deviceName: string;
  bright: string;
}) => {
  const response = await apiClient.post<{
    'm2m:cin': {
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Actuator/LED`, {
    'm2m:cin': {
      con: bright,
    },
  });

  return response.data['m2m:cin'];
};

export const switchSwitchStatus = async ({
  deviceName,
  status,
}: {
  deviceName: string;
  status: string;
}) => {
  const response = await apiClient.post<{
    'm2m:cin': {
      con: string;
    };
  }>(`/TinyIoT/${deviceName}/Actuator/Water`, {
    'm2m:cin': {
      con: status,
    },
  });

  return response.data['m2m:cin'];
};
