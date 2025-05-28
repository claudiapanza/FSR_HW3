

% err_p=out.err_p;
% dot_err_p=out.dot_err_p;
% err_R=out.err_R;
% err_w=out.err_w;
% 
% uw=out.uw;
% alpha=out.alpha;

psi=out.psi;

roll=out.roll;

pitch=out.pitch;



% 
% traslation=out.traslation;
% 
% position_desired=out.position_desired;



%Imposta LaTeX come default
set(groot, 'defaultTextInterpreter', 'latex');
set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
set(groot, 'defaultLegendInterpreter', 'latex');
% 
linewidth = 1.5; % linea leggibile


% Imposta interpreti LaTeX
set(groot, 'defaultTextInterpreter', 'latex');
set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
set(groot, 'defaultLegendInterpreter', 'latex');

% Imposta lo spessore della linea
linewidth = 1.5;
% 
% % Plot 1: Errori di posizione
% figure;
% plot(out.err_p.Time, out.err_p.Data, 'LineWidth', linewidth);
% legend('$e_{p_x}$', '$e_{p_y}$', '$e_{p_z}$');
% xlabel('Time [s]');
% ylabel('Position error [m]');
% title('Position Tracking Error');
% grid on
% 
% % Plot 2: Errori di velocità
% figure;
% plot(out.dot_err_p.Time, out.dot_err_p.Data, 'LineWidth', linewidth);
% legend('$\dot{e}_{p_x}$', '$\dot{e}_{p_y}$', '$\dot{e}_{p_z}$');
% xlabel('Time [s]');
% ylabel('Velocity error [m/s]');
% title('Velocity Tracking Error');
% grid on
% 
% % Plot 3: Errori di orientamento
% figure;
% plot(out.err_R.Time, out.err_R.Data, 'LineWidth', linewidth);
% legend('$e_{R_x}$', '$e_{R_y}$', '$e_{R_z}$');
% xlabel('Time [s]');
% ylabel('Attitude error');
% title('Attitude Tracking Error');
% grid on
% 
% % Plot 4: Errori di velocità angolare
% figure;
% plot(out.err_w.Time, out.err_w.Data, 'LineWidth', linewidth);
% legend('$e_{\omega_x}$', '$e_{\omega_y}$', '$e_{\omega_z}$');
% xlabel('Time [s]');
% ylabel('Angular velocity error [rad/s]');
% title('Angular Velocity Tracking Error');
% grid on
% 
% % Plot 5: Comando uw
% figure;
% plot(out.uw.Time, out.uw.Data, 'LineWidth', linewidth);
% legend('$u_{w1}$', '$u_{w2}$', '$u_{w3}$', '$u_{w4}$');
% xlabel('Time [s]');
% ylabel('Motor Speeds');
% title('Motor Speeds $u_w$');
% grid on
% 
% % Plot 6: Angoli di tilt alpha
% figure;
% plot(out.alpha.Time, out.alpha.Data, 'LineWidth', linewidth);
% legend('$\alpha_1$', '$\alpha_2$', '$\alpha_3$', '$\alpha_4$');
% xlabel('Time [s]');
% ylabel('Tilt Angle [rad]');
% title('Tilt Angles $\alpha$');
% grid on

% Plot 7: Angolo di yaw psi
figure;
plot(out.psi.Time, out.psi.Data, 'LineWidth', linewidth);
xlabel('Time [s]');
ylabel('Yaw  [°]');
title('Yaw Angle $\psi$');
grid on

figure;
plot(out.pitch.Time, out.pitch.Data, 'LineWidth', linewidth);
xlabel('Time [s]');
ylabel('Pitch [°]');
title('Pitch Angle');
grid on
figure;
plot(out.roll.Time, out.roll.Data, 'LineWidth', linewidth);
xlabel('Time [s]');
ylabel('Roll [°]');
title('Roll Angle');
grid on

% % Plot 8: Confronto posizione attuale vs desiderata
% figure;
% plot(out.traslation.Time, out.traslation.Data, '--', 'LineWidth', linewidth); hold on;
% plot(out.position_desired.Time, out.position_desired.Data, 'LineWidth', linewidth);
% legend('Actual $x$', 'Actual $y$', 'Actual $z$', ...
%        'Desired $x$', 'Desired $y$', 'Desired $z$');
% xlabel('Time [s]');
% ylabel('Position [m]');
% title('Actual vs Desired Position');
% grid on

