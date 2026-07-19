class AppRoutes {
  // demo
  static const responsiveDesign =  "/resonsive-design";

  // authentication
  static const login = "/login";
  static const forgotPassword = "/forgot-password";
  static const verification = "/verification-code";

  // dashboard
  static const dashboard = '/dashboard';
  static const notification = '/notifications';

  // Corridors
  static const corridors = '/corridors';
  static const createCorridors = '/corridors/new';
  static const editCorridor = '/corridors/:id/edit';

  // Fleet
  static const fleet = '/fleet';
  static const registerBus = '/fleet/register';
  static const deleteBus = '/fleet/:id/delete';

  // Schedules
  static const schedules = '/schedules';
  static const createSchedule = "/schedules/create";
  static const tripMonitor = '/schedules/:id/monitor';

  // QR Manager
  static const qrManager = '/qr-manager';
  static const generateQrCode = '/qr-manager/generate';
  static const editQRCode = '/qr-manager/:id/edit';

  // tickets
  static const tickets = '/tickets';
  static const ticketDetail = '/ticket/:id';
  static const refunds = '/refunds';

  // Staff
  static const staff = '/staff';
  static const registerStaff = '/staff/register';

  // finances
}
