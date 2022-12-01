# PowerShell
# ���� ARK �����Ľ����ն�
#------------------------------------------------
# ʾ����bin/terminal.ps1 
#           [-u ${USER}]            # ָ�������ն˵��û���Ĭ�Ϸ� root�������� UID ���� USERNAME��
#------------------------------------------------

param(
    [string]$u="1000"
)

$USER = "1000"
if(![String]::IsNullOrEmpty($u)) {
    if(($u -eq "root") -or ($u -eq "0")) {
        $USER = "root"
    }
}


$CONTAINER_NAME = "ARK_SVC"
$CONTAINER_ID = (docker ps -aq --filter name="$CONTAINER_NAME")
if([String]::IsNullOrEmpty($CONTAINER_ID)) {
    Write-Host "[$CONTAINER_NAME] ����û������ ..."

} else {
    docker exec -it -u $USER $CONTAINER_ID bash
}