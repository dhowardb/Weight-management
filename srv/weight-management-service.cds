using { weight.management as service } from '../db/schema';

service weightManagementService {
    @odata.draft.enabled
    entity User as projection on service.Users;
    entity WeightHistory as projection on service.WeightHistory;
}