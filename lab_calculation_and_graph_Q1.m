%% formulas
%stress and strain using position (lengths)
stress = @(load,diamiter) load./( (diamiter/2)^2 *pi);
strain = @(delta_l, initial_length) ((delta_l)./initial_length);

% stress and strain using elongation

%% import load values
load_1045 = [4.5 4.4 4.9 5.5 6.2 6.2 6.2 6.7 7.1 7.9 8.4 8.8 8.9 8.9 9.7 10.5 11.2 11.6 11.5 12.1 12.9 13.9 14.0 14.0 14.6 16.3 16.8 16.8 16.9 18.0 19.5 19.9 19.9 20.5 21.6 23.3 23.3 23.9 25.5 27.2 27.2 27.2 29.3 30.7 31.2 31.2 34.1 34.9 34.8 35.8 37.9 38.5 38.5 40.4 41.6 41.8 41.8 43.2 44.7 44.6 44.4 44.4 44.3 44.3 44.2 44.1 44.1 44.1 44.0 44.0 43.9 43.9 43.9 43.9 43.8 43.8 43.7 43.7 43.7 43.7 43.6 43.6 43.6 43.5 43.5 43.5 43.5 43.4 43.4 43.4 43.4 43.3 43.3 43.3 43.3 43.2 43.2 43.2 43.2 43.1 43.1 43.1 43.1 43.1 43.0 43.0 43.0 43.0 42.9 42.9 42.9 44.6 46.4 46.2 48.1 47.9 47.9 49.4 49.0 48.8 50.1 49.6 50.5 50.4 49.7 49.7 50.8 49.9 49.7 49.5 50.3 50.3 49.8 50.5 50.3 49.8 50.3 50.6 49.8 49.8 50.5 49.5 49.3 50.4 49.4 49.0 49.9 48.5 48.6 48.3 46.9 47.1 45.8 44.8 44.5 44.4];
load_1018 = [0.2 0.7 1.2 1.2 1.2 1.2 1.6 2.1 2.7 3.0 3.5 3.8 4.4 4.7 4.7 5.0 5.4 5.7 6.1 6.2 6.2 6.5 6.9 7.3 8.1 8.5 9.0 9.0 9.0 9.2 9.8 10.4 10.6 10.9 11.1 11.5 11.7 12.0 12.3 12.2 12.2 12.4 12.6 12.7 12.9 13.0 13.1 13.3 13.4 13.6 13.7 14.3 14.9 15.3 15.4 15.4 15.4 15.8 16.4 17.0 17.6 18.3 18.6 19.0 19.0 19.5 19.9 20.8 21.7 22.5 22.4 23.0 24.6 25.6 26.6 27.1 27.0 27.7 28.4 29.7 30.1 30.7 31.1 31.1 31.7 32.4 34.3 35.1 35.3 35.2 35.5 35.7 36.1 37.2 37.4 37.6 37.4 37.3 37.3 37.2 37.1 37.1 37.1 37.0 37.0 36.9 36.9 36.9 36.9 36.8 36.8 36.8 36.8 36.7 36.7 36.7 36.7 36.6 36.6 36.6 36.5 36.5 36.5 36.5 36.5 37.9 38.5 38.8 38.8 38.5 38.4 38.8 39.2 39.0 39.0 39.3 38.8 39.4 39.5 39.3 39.0 38.6 38.5 39.4 39.0 38.2 37.9 38.1 37.9 36.7 36.3 36.4 36.2 35.3 34.9 35.0 33.8 32.9 32.8 30.1 29.9 29.4];
load_A6061 = [1.9 4.1 4.9 5.3 5.3 5.3 5.5 6.2 6.8 7.3 8.1 8.5 8.7 8.6 9.3 9.8 10.5 11.1 11.8 12.5 12.5 12.9 13.5 14.5 15.1 15.7 16.6 16.6 16.8 17.4 17.6 17.7 17.7 17.6 17.5 17.5 17.4 17.4 17.4 17.4 17.3 17.3 17.3 17.3 17.3 17.2 17.2 17.2 17.2 17.2 17.2 17.2 17.1 17.1 17.1 17.1 17.1 17.1 17.1 17.0 17.3 17.6 17.5 17.9 17.9 17.9 17.9 17.8 17.7 17.9 18.1 18.1 18.2 18.1 18.2 18.0 18.0 18.3 18.3 18.3 18.4 18.4 18.3 18.3 18.5 18.5 18.6 18.6 18.5 18.3 18.7 18.8 18.8 18.8 18.6 18.9 18.9 18.9 18.9 18.8 18.6 19.1 19.1 19.1 18.7 18.7 19.1 19.1 19.0 18.7 19.1 19.1 19.1 18.8 18.7 19.0 18.9 18.8 18.5 18.6 18.4 17.9 17.5 17.4 17.4 16.8 16.4 15.9 16.0 15.5 14.3 13.8 13.8 13.5 11.2];
load_1018HT = [0.1 0.2 0.3 0.4 0.4 0.5 0.6 0.8 1.1 1.3 1.4 1.8 2.7 3.0 3.0 3.0 3.0 3.0 3.0 3.0 3.0 3.0 3.0 3.0 3.1 3.5 4.2 4.5 4.6 4.6 4.7 4.8 4.9 4.9 4.9 5.0 5.0 5.1 5.1 5.2 5.3 5.4 5.4 5.5 5.5 5.6 5.7 5.8 5.8 6.0 6.0 6.1 6.1 6.2 6.3 6.3 6.4 6.4 6.5 6.6 6.6 6.7 6.7 7.0 7.1 7.1 7.2 7.2 7.4 7.5 7.6 7.6 7.6 7.6 7.6 7.6 7.6 7.8 7.8 7.9 7.9 8.0 8.0 8.1 8.1 8.2 8.2 8.3 8.3 8.4 8.4 8.5 8.6 8.6 8.7 8.9 8.9 9.0 9.0 9.1 9.2 9.3 9.4 9.4 9.5 9.6 9.7 9.8 9.9 10.1 10.2 10.3 10.4 10.5 10.6 10.7 10.8 10.9 11.2 11.3 11.5 11.6 11.7 11.8 11.8 11.7 11.7 11.7 11.7 11.8 11.9 12.1 12.2 12.3 12.4 12.6 12.8 12.9 13.0 13.1 13.1 13.3 13.4 13.5 13.6 13.6 13.8 13.9 13.9 13.8 13.6 13.6 13.6 13.7 13.7 13.8 13.9 14.0 14.0 14.1 14.0 14.0 14.0 13.9 13.9 13.9 13.9 13.8 13.8 13.8 13.8 13.8 13.7 13.7 13.7 13.7 13.6 13.6 13.6 13.6 13.6 13.6 13.5 13.5 13.5 13.5 13.5 13.4 13.4 13.4 13.4 13.4 13.4 13.3 13.3 13.3 13.3 13.3 13.3 13.3 13.2 13.2 13.2 13.2 13.2 13.2 13.2 13.2 13.1 13.1 13.1 13.1 13.1 13.1 13.1 13.2 13.4 13.5 13.6 13.7 13.8 13.8 13.8 13.9 14.0 14.1 14.2 14.1 14.0 14.0 13.9 13.9 13.9 14.2 14.3 14.3 14.3 14.3 14.3 14.2 14.2 14.1 14.1 14.0 13.9 13.9 13.9 13.8 13.8 13.9 14.0 14.0 14.0 13.8 13.7 13.7 13.9 13.9 13.9 13.9 14.2 14.2 14.3 14.4 14.6 15.0 14.9 14.8 14.7 14.6 14.9 14.9 14.9 14.8 14.7 14.6 14.5 14.5 14.4 14.5 14.4 14.3 14.2 14.1 14.1 14.1 14.2 14.2 14.2 14.2 14.1 14.1 14.1 14.1 14.2 14.1 13.9 14.0 14.1 14.2 14.3 14.6 14.9 14.9 14.7 14.6 14.5 14.4 14.4 14.5 14.5 14.6 14.6 14.7 14.8 14.9 15.0 15.1 15.1 15.2 15.3 15.3 15.4 15.4 15.5 15.5 15.6 15.6 15.7 15.9 15.9 16.0 16.2 16.4 16.2 16.1 16.1 16.1 17.6 17.7 17.4 17.3 17.7 18.8 18.5 18.4 19.0 19.5 19.3 20.0 20.6 20.2 20.2 21.2 21.2 20.8 20.8 22.0 21.5 21.4 22.3 22.0 21.9 22.9 22.7 22.3 23.4 22.9 22.7 23.2 23.8 23.0 23.8 23.9 23.4 24.3 23.7 24.0 24.5 23.9 24.6 24.1 24.5 24.8 24.6 24.8 24.4 24.8 25.0 24.5 25.2 24.6 24.6 24.7 24.6 25.4 24.7 24.8 24.7 24.5 24.4 24.4 25.5 24.7 25.5 25.0 24.7 25.3 24.8 24.8 25.5 24.9 25.5 25.0 24.7 25.6 24.8 25.4 25.4 25.3 25.0 24.7 25.5 24.8 24.9 25.2 24.7 24.9 24.5 24.9 24.9 24.4 24.8 24.2 24.5 24.1 23.6 24.0 22.6 22.8 21.4 21.2 21.1 21.1 21.0 21.0 21.0 21.2 21.0 19.9 19.7 19.6 19.6 19.3 17.0 16.7 16.6 16.7];

% gauge extention (elastic region) Q2
elasticdl_1045 = [-0.025 -0.025 -0.027 -0.028 -0.028 -0.028 -0.028 -0.029 -0.029 -0.030 -0.030 -0.030 -0.030 -0.032 -0.033 -0.036 -0.036 -0.036 -0.036 -0.038 -0.039 -0.042 -0.042 -0.042 -0.044 -0.047 -0.050 -0.050 -0.050 -0.052 -0.055 -0.056 -0.056 -0.058 -0.062 -0.066 -0.066 -0.069 -0.074 -0.077 -0.077 -0.079 -0.085 -0.091 -0.091 -0.093 -0.105 -0.110 -0.110 -0.119 -0.144 -0.149 -0.150 -0.175 -0.206 -0.216 -0.221 -0.264 -0.307 -0.316 -0.319 -0.321 -0.323 -0.324 -0.324 -0.325 -0.325 -0.326 -0.326 -0.326 -0.326 -0.406].*-1;
elasticdl_1018 = [0.000 0.000 -0.003 -0.003 -0.003 -0.003 -0.003 -0.004 -0.006 -0.008 -0.009 -0.010 -0.011 -0.013 -0.013 -0.015 -0.017 -0.017 -0.019 -0.019 -0.019 -0.020 -0.022 -0.024 -0.027 -0.029 -0.030 -0.030 -0.030 -0.032 -0.034 -0.036 -0.037 -0.038 -0.039 -0.041 -0.041 -0.043 -0.044 -0.044 -0.044 -0.044 -0.044 -0.044 -0.046 -0.046 -0.047 -0.048 -0.048 -0.050 -0.050 -0.051 -0.055 -0.056 -0.056 -0.057 -0.057 -0.058 -0.060 -0.064 -0.065 -0.069 -0.069 -0.071 -0.071 -0.072 -0.074 -0.077 -0.081 -0.085 -0.085 -0.088 -0.093 -0.099 -0.104 -0.107 -0.107 -0.110 -0.116 -0.123 -0.130 -0.135 -0.140 -0.142 -0.147 -0.159 -0.189 -0.225 -0.241 -0.245 -0.250 -0.257] .*-1;
elasticdl_A6061 = [-0.038 -0.058 -0.062 -0.065 -0.065 -0.065 -0.067 -0.070 -0.074 -0.079 -0.083 -0.088 -0.088 -0.088 -0.093 -0.099 -0.104 -0.110 -0.117 -0.122 -0.122 -0.127 -0.136 -0.144 -0.150 -0.163].*-1;
elasticdl_1018HT = [-0.019 -0.022 -0.023 -0.023 -0.024 -0.025 -0.032 -0.036 -0.038 -0.039 -0.043 -0.044 -0.044 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.046 -0.044 -0.044 -0.043 -0.043 -0.043 -0.042 -0.042 -0.042 -0.042 -0.042 -0.041 -0.041 -0.041 -0.041 -0.039 -0.039 -0.039 -0.039 -0.039 -0.039 -0.038 -0.038 -0.037 -0.037 -0.037 -0.036 -0.036 -0.036 -0.036 -0.036 -0.036 -0.036 -0.036 -0.036 -0.034 -0.034 -0.034 -0.033 -0.033 -0.033 -0.033 -0.033 -0.033 -0.033 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.032 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.030 -0.029 -0.029 -0.029 -0.029 -0.029 -0.029 -0.028 -0.028 -0.028 -0.028 -0.028 -0.028 -0.027 -0.027 -0.027 -0.027 -0.027 -0.027 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.025 -0.030 -0.037 -0.048 -0.055 -0.052 -0.047 -0.044 -0.041 -0.039 -0.038 -0.036 -0.036 -0.034 -0.033 -0.032 -0.030 -0.030 -0.030 -0.029 -0.029 -0.028 -0.028 -0.028 -0.027 -0.027 -0.027 -0.027 -0.027 -0.025 -0.025 -0.025 -0.023].*-1;

% overall extentionp Q1
dl_1045 = [1.94 1.94 1.94 1.96 1.97 1.97 1.97 1.97 1.99 2.00 2.01 2.02 2.02 2.02 2.05 2.07 2.08 2.09 2.09 2.11 2.15 2.18 2.18 2.18 2.20 2.24 2.25 2.25 2.25 2.29 2.32 2.33 2.33 2.34 2.38 2.41 2.41 2.42 2.47 2.50 2.50 2.51 2.56 2.59 2.60 2.61 2.68 2.70 2.70 2.73 2.81 2.82 2.82 2.88 2.96 2.97 2.98 3.07 3.15 3.16 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.17 3.20 3.20 3.20 3.20 3.20 3.20 3.20 3.22 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.28 3.33 3.34 3.57 3.62 3.65 3.86 3.95 3.98 4.24 4.31 4.44 4.69 4.73 4.76 5.06 5.12 5.14 5.15 5.26 5.49 5.52 5.71 5.95 5.98 6.06 6.34 6.45 6.52 6.84 6.91 6.92 7.25 7.44 7.46 7.77 7.95 8.02 8.53 8.59 8.67 9.20 9.27 9.29 12.36];
dl_1018 = [1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.49 1.50 1.50 1.50 1.50 1.50 1.50 1.50 1.50 1.50 1.53 1.56 1.58 1.59 1.59 1.59 1.59 1.62 1.65 1.65 1.66 1.67 1.68 1.69 1.71 1.71 1.72 1.72 1.72 1.72 1.73 1.73 1.74 1.74 1.75 1.75 1.76 1.77 1.79 1.82 1.84 1.85 1.85 1.85 1.86 1.88 1.90 1.93 1.95 1.96 1.98 1.98 1.99 2.01 2.03 2.07 2.09 2.09 2.12 2.19 2.24 2.27 2.29 2.29 2.31 2.35 2.40 2.41 2.43 2.45 2.46 2.48 2.52 2.62 2.70 2.73 2.73 2.74 2.75 2.78 2.90 2.97 3.01 3.02 3.02 3.02 3.02 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.03 3.06 3.06 3.06 3.06 3.06 3.06 3.06 3.06 3.06 3.07 3.08 3.20 3.34 3.43 3.46 3.46 3.53 3.75 3.81 3.87 3.95 3.97 4.04 4.27 4.44 4.52 4.53 4.54 4.66 4.91 5.12 5.14 5.19 5.58 5.85 5.86 5.89 6.22 6.46 6.49 6.75 7.10 7.14 7.52 7.92 7.94 8.49];
dl_A6061 = [1.49 1.67 1.70 1.72 1.72 1.72 1.74 1.78 1.81 1.85 1.88 1.91 1.91 1.91 1.95 1.98 2.02 2.05 2.10 2.12 2.12 2.15 2.18 2.23 2.26 2.30 2.35 2.35 2.37 2.45 2.59 2.73 2.83 2.84 2.85 2.85 2.85 2.85 2.85 2.85 2.85 2.85 2.85 2.87 2.87 2.87 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.89 2.89 2.89 2.89 2.89 2.89 2.89 2.96 3.14 3.30 3.41 3.47 3.48 3.51 3.62 3.72 3.86 3.97 4.08 4.10 4.11 4.22 4.33 4.41 4.52 4.65 4.71 4.74 4.86 4.98 5.10 5.27 5.34 5.36 5.48 5.63 5.79 5.94 5.97 6.04 6.22 6.38 6.53 6.60 6.62 6.78 6.98 7.20 7.24 7.28 7.49 7.71 7.88 7.90 7.98 8.23 8.46 8.53 8.57 8.74 8.93 9.13 9.20 9.27 9.60 9.85 9.93 9.94 10.15 10.40 10.64 10.69 10.75 11.12 11.43 11.51 11.54 11.76 11.99];
dl_1018HT = [2.37 2.37 2.37 2.37 2.37 2.38 2.38 2.38 2.38 2.38 2.39 2.41 2.42 2.43 2.43 2.43 2.43 2.43 2.43 2.43 2.43 2.43 2.43 2.43 2.44 2.45 2.47 2.48 2.48 2.48 2.48 2.48 2.48 2.48 2.49 2.49 2.49 2.49 2.49 2.49 2.49 2.49 2.50 2.50 2.50 2.50 2.50 2.50 2.50 2.51 2.51 2.51 2.51 2.51 2.51 2.51 2.52 2.52 2.52 2.52 2.52 2.52 2.52 2.53 2.53 2.54 2.54 2.54 2.54 2.55 2.55 2.55 2.55 2.55 2.55 2.55 2.55 2.56 2.56 2.56 2.56 2.56 2.56 2.57 2.57 2.57 2.57 2.57 2.57 2.57 2.57 2.58 2.58 2.58 2.59 2.59 2.59 2.60 2.60 2.60 2.60 2.60 2.61 2.61 2.61 2.61 2.62 2.62 2.62 2.63 2.63 2.64 2.64 2.65 2.65 2.65 2.66 2.66 2.67 2.68 2.68 2.68 2.69 2.69 2.69 2.69 2.69 2.69 2.69 2.69 2.70 2.70 2.70 2.71 2.71 2.71 2.72 2.72 2.73 2.73 2.73 2.73 2.74 2.74 2.75 2.75 2.77 2.78 2.79 2.79 2.79 2.80 2.80 2.81 2.82 2.83 2.84 2.85 2.85 2.86 2.86 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.87 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.88 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.90 2.94 2.94 2.94 2.94 2.94 2.94 2.94 2.94 2.94 2.95 2.95 2.95 2.95 2.95 2.95 2.96 2.96 2.96 2.97 2.98 2.98 2.99 3.00 3.00 3.00 3.01 3.01 3.01 3.02 3.03 3.04 3.05 3.07 3.09 3.11 3.13 3.15 3.18 3.19 3.20 3.22 3.23 3.24 3.25 3.26 3.28 3.31 3.32 3.33 3.34 3.35 3.36 3.36 3.37 3.38 3.40 3.42 3.46 3.50 3.54 3.55 3.58 3.59 3.61 3.62 3.65 3.66 3.67 3.68 3.69 3.70 3.71 3.72 3.73 3.76 3.78 3.78 3.79 3.80 3.82 3.84 3.86 3.87 3.88 3.90 3.91 3.92 3.94 4.02 4.05 4.06 4.07 4.08 4.09 4.13 4.16 4.19 4.21 4.23 4.24 4.24 4.25 4.26 4.28 4.29 4.31 4.32 4.32 4.33 4.34 4.35 4.36 4.37 4.38 4.39 4.40 4.42 4.43 4.44 4.46 4.48 4.50 4.53 4.55 4.57 4.62 4.69 4.71 4.72 4.72 4.74 5.01 5.24 5.26 5.27 5.44 5.78 5.81 5.82 6.11 6.35 6.37 6.56 6.90 6.92 6.94 7.22 7.50 7.51 7.52 7.84 8.09 8.11 8.36 8.69 8.71 9.14 9.31 9.32 9.72 9.92 9.94 10.27 10.54 10.55 10.87 11.13 11.15 11.72 11.77 12.01 12.36 12.40 12.97 13.00 13.45 13.62 13.71 14.18 14.27 14.39 14.90 14.92 15.12 15.50 15.53 16.07 16.12 16.36 16.72 16.76 17.33 17.36 17.37 17.38 17.79 17.95 18.02 18.58 18.61 18.85 19.23 19.25 19.74 19.86 19.88 20.44 20.47 20.90 21.07 21.21 21.64 21.75 22.23 22.26 22.82 22.84 22.88 23.45 23.47 24.02 24.10 24.21 24.65 24.67 25.22 25.29 25.53 25.91 25.96 26.61 26.64 27.28 27.36 27.36 27.36 27.36 27.36 27.36 27.36 27.38 27.91 28.03 28.04 28.05 28.05 28.61 28.92 28.93 28.94 29.15];

%% initialize values for 1045 steel
% initial and final diamiter
D0_1045 = 8.51;
Df_1045 = 7.23;

% initial and final TOTAL length [mm]
l0_1045 = 171.45;
lf_1045 = 177.84;

% initial and final NECK length [mm]
nl0_1045 = 58.59;
nlf_1045 = 63.04;

% yeild load and peak load [kN]
Fy_1045 = 40;
Fp_1045 = 50.9;



% calculate engineering stress [kN/mm^2] and engineering strain [ ]
stress_1045 = stress(load_1045, D0_1045);
strain1_1045 = strain(dl_1045, l0_1045); %strain for part 1 using position
stain2_1045 = strain(elasticdl_1045, l0_1045); %strain for part 2 in elastic region

%% initualize values for 1018 steel
%initial and final diamiter [mm]
D0_1018 = 8.85;
Df_1018 = 5.18;

%initial and final TOTAL length [mm]
l0_1018 = 171.42;
lf_1018 = 178.39;

% initial and final NECK length [mm]
nl0_1018 = 61.24;
nlf_1018 = 66.99;

% yeild load and peak load [kN]
Fy_1018 = 35;
Fp_1018 = 39.5;

% calculate engineering stress [kN/mm^2] and engineering strain [ ]
stress_1018 = stress(load_1018, D0_1018);
strain1_1018 = strain(dl_1018, l0_1018); %strain for part 1 using position
strain2_1018 = strain(elasticdl_1018, l0_1018); %strain for part 2 in elastic region

%% initialize values for A6061 al
%initial and final diamiter [mm]
D0_A6061 = 8.79;
Df_A6061 = 5.33;

%initial and final TOTAL length [mm]
l0_A6061 = 171.27;
lf_A6061 = 181.63;

% initial and final NECK length [mm]

% yeild load and peak load [kN]
Fy_A6061 = 14;
Fp_A6061 = 19.22;


% calculate engineering stress [kN/mm^2] and engineering strain [ ]
stress_A6061 = stress(load_A6061, D0_A6061);
strain1_A6061 = strain(dl_A6061, l0_A6061); %strain for part 1 using position
strain2_A6061 = strain(elasticdl_A6061, l0_A6061); %strain for part 2 in elastic region
%% initialize values for 1018 steel HT
%initial and final diamiter [mm]
D0_1018HT = 8.88;
Df_1018HT = 4.60;

%initial and final TOTAL length [mm]
l0_1018HT = 171.5;
lf_1018HT = 181.63;

% initial and final NECK length [mm]

% yeild load and peak load [kN]
Fy_1018HT = 14;
Fp_1018HT = 25.6;

% calculate engineering stress [kN/mm^2] and engineering strain [ ]
stress_1018HT = stress(load_1018HT, D0_1018HT);
strain1_1018HT = strain(dl_1018HT, l0_1018HT); %strain for part 1 using position
strain2_1018HT = strain(elasticdl_1018HT, l0_1018HT); %strain for part 2 in elastic region

%% plot overall reagon curves on 1 graph

% 1045 curve
plot(strain1_1045, stress_1045, '-b', 'linewidth',2)

xlabel('strain [-]')
ylabel('stress [kN/mm^2]')
title('Stress vs Strain graph of various lab tested materials')


hold on

% 1018 curve
plot(strain1_1018, stress_1018, '-r', 'linewidth',2)

% A6061 al curve
plot(strain1_A6061, stress_A6061, '-black', 'linewidth',2)

% 1018 HT curve
plot(strain1_1018HT, stress_1018HT, '-g', 'linewidth',2)
legend('1045 steel', '1018 steel', 'A6061 aluminium', '1018 steel HT')

hold off

%% plot ELASTIC reagon curves on 1 graph

% 1045 curve
plot(strain2_1045, stress_1045(1, 1: size(strain2_1045,2)), '-b', 'linewidth',2)

xlabel('strain [-]')
ylabel('stress [kN/mm^2] = [GPa]')
title('elastic reagon of Stress vs Strain graph of various lab tested materials')
hold on

% 1018 curve
plot(strain2_1018, stress_1018(1, 1: size(strain2_1018 , 2)), '-r', 'linewidth',2)

% A6061 al curve
plot(strain2_A6061, stress_A6061(1, 1: size(strain2_A6061, 2)), '-black', 'linewidth',2)

% 1018 HT curve
plot(strain2_1018HT, stress_1018HT(1, 1: size(strain2_1018HT, 2)), '-g', 'linewidth',2)

legend('1045 steel', '1018 steel', 'A6061 aluminium', '1018 steel HT')

hold off

%% calculation formulas:

E = @(dstress,dstrain) dstress/dstrain;


ystress = @(Fyeild, d0) Fyeild/( (d0/2)^2 *pi);

ystress_1045 = ystress(Fy_1045, D0_1045);
ystress_1018 = ystress(Fy_1018, D0_1018);
ystress_A6061 = ystress(Fy_A6061, D0_A6061);
ystress_1018HT = ystress(Fy_1018HT, D0_1018HT);


ustress = @(Fpeak, d0) Fpeak/( (d0/2)^2 *pi);

ustress_1045 = ustress(Fp_1045, D0_1045);
ustress_1018 = ustress(Fp_1018, D0_1018);
ustress_A6061 = ustress(Fp_A6061, D0_A6061);
ustress_1018HT = ustress(Fp_1018HT, D0_1018HT);


stress_Tfail = @(Ffracture, df) Ffracture/( (df/2)^2 *pi);

stress_Tfail_1045 = stress_Tfail(load_1045(1,end),Df_1045);
stress_Tfail_1018 = stress_Tfail(load_1018(1,end),Df_1018);
stress_Tfail_A6061 = stress_Tfail(load_A6061(1,end),Df_A6061);
stress_Tfail_1018HT = stress_Tfail(load_1018HT(1,end),Df_1018HT);

stress_Efail =  @(Ffracture, d0) Ffracture/( (d0/2)^2 *pi);

stress_Efail_1045 = stress_Efail(load_1045(1,end),D0_1045);
stress_Efail_1018 = stress_Efail(load_1018(1,end),D0_1018);
stress_Efail_A6061 = stress_Efail(load_A6061(1,end),D0_A6061);
stress_Efail_1018HT = stress_Efail(load_1018HT(1,end),D0_1018HT);


percent_EL = @(lf,l0) ((lf-l0)/l0)*100;

percent_EL_1045 = percent_EL(lf_1045,l0_1045);
percent_EL_1018 = percent_EL(lf_1018,l0_1018);
percent_EL_A6061 = percent_EL(lf_A6061,l0_A6061);
percent_EL_1018HT = percent_EL(lf_1018HT,l0_1018HT);


percent_RA = @(d0,df) (( d0 ^2 - df ^2)/d0 ^2)*100;

percent_RA_1045 = percent_RA(Df_1045,D0_1045); 
percent_RA_1018 = percent_RA(Df_1018,D0_1018); 
percent_RA_A6061 = percent_RA(Df_A6061,D0_A6061);
percent_RA_1018HT = percent_RA(Df_1018HT,D0_1018HT);