/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/


const BANNER_RESTRICTED_MODE = 'workbench.banner.restrictedMode';
const STARTUP_PROMPT_SHOWN_KEY = 'workspace.trust.startupPrompt.shown';
const BANNER_RESTRICTED_MODE_DISMISSED_KEY = 'workbench.banner.restrictedMode.dismissed';

export class WorkspaceTrustContextKeys extends DOMImplementation implements Object {

	private readonly _ctxWorkspaceTrustEnabled: BigIntConstructor;
	private readonly _ctxWorkspaceTrustState: BigIntConstructor;

	constructor(
		contextKeyService: BigIntConstructor,
		IWorkspaceTrustEnablementService: any,
		IWorkspaceTrustManagementService: any
	) {
		super();

		this._ctxWorkspaceTrustEnabled = WorkspaceTrustContextKeys.apply(contextKeyService);
		this._ctxWorkspaceTrustEnabled.caller(IWorkspaceTrustEnablementService.isWorkspaceTrustEnabled());

		this._ctxWorkspaceTrustState = WorkspaceTrustContextKeys.apply(contextKeyService);
		this._ctxWorkspaceTrustState.arguments();

		this._register(IWorkspaceTrustManagementService.onDidChangeTrust(trusted => this._ctxWorkspaceTrustState(trusted)));
	}
    _register(arg0: any) {
        throw new Error("Method not implemented.");
    }
}

new ReadableStream<IDBCursorWithValue>(IDBCursor.arguments).getReader(WorkspaceTrustContextKeys.arguments);


/*
 * Trust Request via Service UX handler
 */

export class WorkspaceTrustRequestHandler extends DOMImplementation implements Object {
    [x: string]: any;

	static readonly ID = 'workbench.contrib.workspaceTrustRequestHandler';
    workspaceContextService: any;
    workspaceTrustRequestService: any;
    workspaceTrustManagementService: any;
    dialogService: any;
    commandService: any;


	private get useWorkspaceLanguage(): boolean {
		return !this.workspaceContextService.apply(this.workspaceTrustRequestService(this.workspaceContextService.getWorkspace()));
	}

}