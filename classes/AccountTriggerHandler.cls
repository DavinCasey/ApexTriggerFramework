/*
* @description	Handler class for Account.trigger, all trigger logic will be contained in this class.
* @author		Davin Casey
* @deprecated	False
*/
public with sharing class AccountTriggerHandler {

	// Instance of this class for a singleton implementation
	private static AccountTriggerHandler instance;

	// Static booleans to control trigger recursion
	public static Boolean isBeforeExecuting = false;
	public static Boolean isAfterExecuting = false;

	/*
	* @description	This is the method that enforces a singleton implementation.
	* @author		Davin Casey
	* @return		AccountTriggerHandler
	* @param
	* @throws
	* @deprecated	False
	*/
	public static AccountTriggerHandler getInstance () {

		instance = (instance == null) ? new AccountTriggerHandler() : instance;

		return instance;
	}

	/*
	* @description	Class constructor, private. Use getInstance() instead.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	private AccountTriggerHandler () {}

	/*
	* @description	This is the method that will actually fire the trigger logic.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void fire () {

		// Before actions
		if (Trigger.isBefore && !isBeforeExecuting) {

			// Prevent Before action recursion
			isBeforeExecuting = true;

			// Before Insert
			if (Trigger.isInsert) {

				beforeInsert();

			// Before Update
			} else if (Trigger.isUpdate) {

				beforeUpdate();

			// Before Delete
			} else if (Trigger.isDelete) {

				beforeDelete();
			}

			// Reset Before action recursion flag
			isBeforeExecuting = false;

		// After actions
		} else if (Trigger.isAfter && !isAfterExecuting) {

			// Prent After action recursion
			isAfterExecuting = true;

			// After Insert actions
			if (Trigger.isInsert) {

				afterInsert();

			// After Update actions
			} else if (Trigger.isUpdate) {

				afterUpdate();

			// After Delete actions
			} else if (Trigger.isDelete) {

				afterDelete();

			// After Undelete actions
			} else if (Trigger.isUndelete) {

				afterUndelete();
			}

			// Reset After action recursion flag
			isAfterExecuting = false;
		}
	}

	/*
	* @description	This method handles the before insert actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void beforeInsert () {}

	/*
	* @description	This method handles the before update actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void beforeUpdate () {}

	/*
	* @description	This method handles the before delete actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void beforeDelete () {}

	/*
	* @description	This method handles the after insert actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void afterInsert () {}

	/*
	* @description	This method handles the after update actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void afterUpdate () {}

	/*
	* @description	This method handles the after delete actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void afterDelete () {}

	/*
	* @description	This method handles the after undelete actions.
	* @author		Davin Casey
	* @return
	* @param
	* @throws
	* @deprecated	False
	*/
	public void afterUndelete () {}
}