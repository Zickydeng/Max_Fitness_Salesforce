import { LightningElement , api } from "lwc";
export default class LwcScreen1 extends LightningElement {
	@api
	accountId;
	@api
	recordId;
	@api
	objectApiName;
}