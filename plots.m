

% err_p1=out.err_p1;
% err_p2=out.err_p2;
% err_p3=out.err_p3;
% err_r1=out.err_r1;
% err_r2=out.err_r2;
% err_r3=out.err_r3;
% 
% err_vel1=out.err_vel1;
% err_vel2=out.err_vel2;
% err_vel3=out.err_vel3;
% err_w1=out.err_w1;
% err_w2=out.err_w2;
% err_w3=out.err_w3;
% 
% ut=out.ut;
% % tau=out.tau;
% taux=out.taux;
% tauy=out.tauy;
% tauz=out.tauz;
% attitude=out.attitude;
% 
% x=out.x;
% y=out.y;
% z=out.z;


% Imposta LaTeX come default
% set(groot, 'defaultTextInterpreter', 'latex');
% set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
% set(groot, 'defaultLegendInterpreter', 'latex');
% 
% linewidth = 1.5; % linea leggibile
% 
% %% Plot 1 - Position (x, y, z)
% figure;
% plot(x.Time, x.Data, 'r', ...
%      y.Time, y.Data, 'g', ...
%      z.Time, z.Data, 'b', 'LineWidth', linewidth);
% xlabel('Time [s]');
% ylabel('Position [m]');
% title('Position Tracking');
% legend({'$x$', '$y$', '$z$'});
% grid on;

%% Plot 2 - Attitude (roll, pitch, yaw)
% figure;
% % plot(attitude.Time, attitude.Data, 'LineWidth', linewidth);
% plot(attitude.Time, squeeze(attitude.Data), 'k', 'LineWidth', linewidth);
% xlabel('Time [s]');
% ylabel('Attitude [rad]');
% title('Attitude');
% grid on;


%% Plot 3 - Position Error Components
% figure;
% subplot(3,1,1);
% plot(err_p1.Time, err_p1.Data, 'r', 'LineWidth', linewidth);
% ylabel('$e_{p,x}$ [m]');
% grid on;
% 
% subplot(3,1,2);
% plot(err_p2.Time, err_p2.Data, 'g', 'LineWidth', linewidth);
% ylabel('$e_{p,y}$ [m]');
% grid on;
% 
% subplot(3,1,3);
% plot(err_p3.Time, err_p3.Data, 'b', 'LineWidth', linewidth);
% ylabel('$e_{p,z}$ [m]');
% xlabel('Time [s]');
% grid on;
% sgtitle('Position Error Components');
% 
% %% Plot 4 - Velocity Error Components
% figure;
% subplot(3,1,1);
% plot(err_vel1.Time, err_vel1.Data, 'r', 'LineWidth', linewidth);
% ylabel('$e_{v,x}$ [m/s]');
% grid on;
% 
% subplot(3,1,2);
% plot(err_vel2.Time, err_vel2.Data, 'g', 'LineWidth', linewidth);
% ylabel('$e_{v,y}$ [m/s]');
% grid on;
% 
% subplot(3,1,3);
% plot(err_vel3.Time, err_vel3.Data, 'b', 'LineWidth', linewidth);
% ylabel('$e_{v,z}$ [m/s]');
% xlabel('Time [s]');
% grid on;
% sgtitle('Velocity Error Components');
% 
% %% Plot 5 - Attitude Error Components
% figure;
% subplot(3,1,1);
% plot(err_r1.Time, err_r1.Data, 'r', 'LineWidth', linewidth);
% ylabel('$e_{R,x}$');
% grid on;
% 
% subplot(3,1,2);
% plot(err_r2.Time, err_r2.Data, 'g', 'LineWidth', linewidth);
% ylabel('$e_{R,y}$');
% grid on;
% 
% subplot(3,1,3);
% plot(err_r3.Time, err_r3.Data, 'b', 'LineWidth', linewidth);
% ylabel('$e_{R,z}$');
% xlabel('Time [s]');
% grid on;
% sgtitle('Attitude Error Components');
% 
%% Plot 6 - Angular Velocity Error Components
figure;
subplot(3,1,1);
plot(err_w1.Time, err_w1.Data, 'r', 'LineWidth', linewidth);
ylabel('$e_{\omega,x}$ [rad/s]');
grid on;

subplot(3,1,2);
plot(err_w2.Time, err_w2.Data, 'g', 'LineWidth', linewidth);
ylabel('$e_{\omega,y}$ [rad/s]');
grid on;

subplot(3,1,3);
plot(err_w3.Time, err_w3.Data, 'b', 'LineWidth', linewidth);
ylabel('$e_{\omega,z}$ [rad/s]');
xlabel('Time [s]');
grid on;
sgtitle('Angular Velocity Error Components');

% %% Plot 7 - Thrust Input $u_t$
% figure;
% plot(ut.Time, ut.Data, 'k', 'LineWidth', linewidth);
% xlabel('Time [s]');
% ylabel('$u_t$ [N]');
% title('Total Thrust Input');
% grid on;
% 
% %% Plot 8 - Torque Input $\tau$
% figure;
% subplot(3,1,1);
% plot(taux.Time, taux.Data, 'r', 'LineWidth', linewidth);
% ylabel('$\tau_x$ [Nm]');
% grid on;
% 
% subplot(3,1,2);
% plot(tauy.Time, tauy.Data, 'g', 'LineWidth', linewidth);
% ylabel('$\tau_y$ [Nm]');
% grid on;
% 
% subplot(3,1,3);
% plot(tauz.Time, tauz.Data, 'b', 'LineWidth', linewidth);
% ylabel('$\tau_z$ [Nm]');
% xlabel('Time [s]');
% grid on;
% sgtitle('Torque Input Components');
% 
