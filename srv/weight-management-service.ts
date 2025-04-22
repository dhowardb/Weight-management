import { Request, ApplicationService, Query, predicate } from '@sap/cds';
// import { weightManagementService } from '#cds-models/weightManagementService';

module.exports = class weightManagementService extends ApplicationService {
  init(): Promise<void> {
    const { WeightHistory } = this.entities;

    this.before('READ', WeightHistory, async (req: Request) => {
      if (req) {
        console.log(req.data);

        console.log(req);
        // const data : weightManagementService = {  };
      }
    });

    return super.init();
  }
};
