{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IdentityToolkit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Help the third party sites to implement federated login.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference>
module Network.Google.IdentityToolkit
    (
    -- * REST Resources

    -- ** Google Identity Toolkit API
      IdentityToolkit
    , identityToolkit
    , identityToolkitURL

    -- ** identitytoolkit.relyingparty.createAuthUri
    , module Network.Google.API.IdentityToolkit.Relyingparty.CreateAuthURI

    -- ** identitytoolkit.relyingparty.deleteAccount
    , module Network.Google.API.IdentityToolkit.Relyingparty.DeleteAccount

    -- ** identitytoolkit.relyingparty.downloadAccount
    , module Network.Google.API.IdentityToolkit.Relyingparty.DownloadAccount

    -- ** identitytoolkit.relyingparty.getAccountInfo
    , module Network.Google.API.IdentityToolkit.Relyingparty.GetAccountInfo

    -- ** identitytoolkit.relyingparty.getOobConfirmationCode
    , module Network.Google.API.IdentityToolkit.Relyingparty.GetOobConfirmationCode

    -- ** identitytoolkit.relyingparty.getPublicKeys
    , module Network.Google.API.IdentityToolkit.Relyingparty.GetPublicKeys

    -- ** identitytoolkit.relyingparty.getRecaptchaParam
    , module Network.Google.API.IdentityToolkit.Relyingparty.GetRecaptchaParam

    -- ** identitytoolkit.relyingparty.resetPassword
    , module Network.Google.API.IdentityToolkit.Relyingparty.ResetPassword

    -- ** identitytoolkit.relyingparty.setAccountInfo
    , module Network.Google.API.IdentityToolkit.Relyingparty.SetAccountInfo

    -- ** identitytoolkit.relyingparty.uploadAccount
    , module Network.Google.API.IdentityToolkit.Relyingparty.UploadAccount

    -- ** identitytoolkit.relyingparty.verifyAssertion
    , module Network.Google.API.IdentityToolkit.Relyingparty.VerifyAssertion

    -- ** identitytoolkit.relyingparty.verifyPassword
    , module Network.Google.API.IdentityToolkit.Relyingparty.VerifyPassword

    -- * Types

    -- ** IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , identitytoolkitRelyingpartyGetPublicKeysResponse

    -- ** IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , identitytoolkitRelyingpartyGetAccountInfoRequest
    , irgairEmail
    , irgairLocalId
    , irgairIdToken

    -- ** Relyingparty
    , Relyingparty
    , relyingparty
    , rEmail
    , rKind
    , rUserIp
    , rRequestType
    , rCaptchaResp
    , rNewEmail
    , rChallenge
    , rIdToken

    -- ** IdentitytoolkitRelyingpartyResetPasswordRequest
    , IdentitytoolkitRelyingpartyResetPasswordRequest
    , identitytoolkitRelyingpartyResetPasswordRequest
    , irrprEmail
    , irrprNewPassword
    , irrprOobCode
    , irrprOldPassword

    -- ** IdentitytoolkitRelyingpartyUploadAccountRequest
    , IdentitytoolkitRelyingpartyUploadAccountRequest
    , identitytoolkitRelyingpartyUploadAccountRequest
    , iruarUsers
    , iruarMemoryCost
    , iruarSaltSeparator
    , iruarHashAlgorithm
    , iruarSignerKey
    , iruarRounds

    -- ** UploadAccountResponseItemError
    , UploadAccountResponseItemError
    , uploadAccountResponseItemError
    , uarieMessage
    , uarieIndex

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest
    , IdentitytoolkitRelyingpartyCreateAuthUriRequest
    , identitytoolkitRelyingpartyCreateAuthUriRequest
    , ircaurProviderId
    , ircaurClientId
    , ircaurContext
    , ircaurIdentifier
    , ircaurOtaApp
    , ircaurOauthConsumerKey
    , ircaurAppId
    , ircaurContinueUri
    , ircaurOauthScope
    , ircaurOpenidRealm

    -- ** Alt
    , Alt (..)

    -- ** GetOobConfirmationCodeResponse
    , GetOobConfirmationCodeResponse
    , getOobConfirmationCodeResponse
    , goccrKind
    , goccrOobCode

    -- ** IdentitytoolkitRelyingpartyDeleteAccountRequest
    , IdentitytoolkitRelyingpartyDeleteAccountRequest
    , identitytoolkitRelyingpartyDeleteAccountRequest
    , irdarLocalId

    -- ** IdentitytoolkitRelyingpartyDownloadAccountRequest
    , IdentitytoolkitRelyingpartyDownloadAccountRequest
    , identitytoolkitRelyingpartyDownloadAccountRequest
    , irdarNextPageToken
    , irdarMaxResults

    -- ** VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoUrl
    , vprOauthAccessToken
    , vprKind
    , vprOauthExpireIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOauthAuthorizationCode

    -- ** DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , darNextPageToken
    , darUsers
    , darKind

    -- ** GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiPhotoUrl
    , uiDisabled
    , uiProviderUserInfo
    , uiValidSince
    , uiPasswordUpdatedAt
    , uiVersion
    , uiEmailVerified
    , uiSalt
    , uiDisplayName
    , uiPasswordHash
    , uiLocalId

    -- ** UserInfoItemProviderUserInfo
    , UserInfoItemProviderUserInfo
    , userInfoItemProviderUserInfo
    , uiipuiProviderId
    , uiipuiPhotoUrl
    , uiipuiFederatedId
    , uiipuiDisplayName

    -- ** GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- ** IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , identitytoolkitRelyingpartyVerifyPasswordRequest
    , irvprEmail
    , irvprCaptchaChallenge
    , irvprPassword
    , irvprCaptchaResponse
    , irvprPendingIdToken

    -- ** IdentitytoolkitRelyingpartySetAccountInfoRequest
    , IdentitytoolkitRelyingpartySetAccountInfoRequest
    , identitytoolkitRelyingpartySetAccountInfoRequest
    , irsairUpgradeToFederatedLogin
    , irsairEmail
    , irsairCaptchaChallenge
    , irsairValidSince
    , irsairOobCode
    , irsairPassword
    , irsairCaptchaResponse
    , irsairEmailVerified
    , irsairDisplayName
    , irsairDisableUser
    , irsairLocalId
    , irsairIdToken
    , irsairProvider

    -- ** IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , identitytoolkitRelyingpartyVerifyAssertionRequest
    , irvarPostBody
    , irvarReturnRefreshToken
    , irvarRequestUri
    , irvarPendingIdToken

    -- ** DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , dKind

    -- ** SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- ** VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varEmailRecycled
    , varPhotoUrl
    , varVerifiedProvider
    , varContext
    , varNeedConfirmation
    , varOriginalEmail
    , varLastName
    , varOauthAccessToken
    , varDateOfBirth
    , varKind
    , varOauthExpireIn
    , varAppInstallationUrl
    , varAction
    , varFederatedId
    , varAppScheme
    , varInputEmail
    , varEmailVerified
    , varLanguage
    , varFirstName
    , varDisplayName
    , varOauthRequestToken
    , varOauthScope
    , varNickName
    , varLocalId
    , varTimeZone
    , varIdToken
    , varOauthAuthorizationCode

    -- ** SetAccountInfoResponseItemProviderUserInfo
    , SetAccountInfoResponseItemProviderUserInfo
    , setAccountInfoResponseItemProviderUserInfo
    , sairipuiProviderId
    , sairipuiPhotoUrl
    , sairipuiDisplayName

    -- ** ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind

    -- ** UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- ** CreateAuthUriResponse
    , CreateAuthUriResponse
    , createAuthUriResponse
    , caurProviderId
    , caurKind
    , caurAuthUri
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider
    ) where

import           Network.Google.API.IdentityToolkit.Relyingparty.CreateAuthURI
import           Network.Google.API.IdentityToolkit.Relyingparty.DeleteAccount
import           Network.Google.API.IdentityToolkit.Relyingparty.DownloadAccount
import           Network.Google.API.IdentityToolkit.Relyingparty.GetAccountInfo
import           Network.Google.API.IdentityToolkit.Relyingparty.GetOobConfirmationCode
import           Network.Google.API.IdentityToolkit.Relyingparty.GetPublicKeys
import           Network.Google.API.IdentityToolkit.Relyingparty.GetRecaptchaParam
import           Network.Google.API.IdentityToolkit.Relyingparty.ResetPassword
import           Network.Google.API.IdentityToolkit.Relyingparty.SetAccountInfo
import           Network.Google.API.IdentityToolkit.Relyingparty.UploadAccount
import           Network.Google.API.IdentityToolkit.Relyingparty.VerifyAssertion
import           Network.Google.API.IdentityToolkit.Relyingparty.VerifyPassword
import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type IdentityToolkit =
     RelyingpartyDeleteAccountAPI :<|>
       RelyingpartyGetRecaptchaParamAPI
       :<|> RelyingpartyDownloadAccountAPI
       :<|> RelyingpartySetAccountInfoAPI
       :<|> RelyingpartyCreateAuthURIAPI
       :<|> RelyingpartyGetAccountInfoAPI
       :<|> RelyingpartyUploadAccountAPI
       :<|> RelyingpartyGetOobConfirmationCodeAPI
       :<|> RelyingpartyVerifyAssertionAPI
       :<|> RelyingpartyGetPublicKeysAPI
       :<|> RelyingpartyResetPasswordAPI
       :<|> RelyingpartyVerifyPasswordAPI

identityToolkit :: Proxy IdentityToolkit
identityToolkit = Proxy
