{if $templateName === 'user' && $templateNameApplication === 'wcf'}
    {if $__wcf->getSession()->getPermission('user.profile.bannedUserNotice.canSeeBannedUserNotice')}
        {if $user->banned == 1}
            <div class="error notice">
                <p>{lang}wcf.bannedUserNotice.bannedUser{/lang}</p>
                {if $__wcf->getSession()->getPermission('user.profile.bannedUserNotice.canSeeBannedUserNoticeInfo')}<p>{lang}wcf.bannedUserNotice.banExpires{/lang}</p>{/if}
                {if $__wcf->getSession()->getPermission('user.profile.bannedUserNotice.canSeeBannedUserNoticeInfo') && !$user->banReason|empty}<p>{lang}wcf.bannedUserNotice.banReason{/lang}</p>{/if}
            </div>
        {/if}
    {/if}
{/if}