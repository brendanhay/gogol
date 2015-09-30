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
    -- * API
      IdentityToolkitAPI
    , identityToolkitAPI
    , identityToolkitURL

    -- * Service Methods

    -- * REST Resources

    -- ** IdentitytoolkitRelyingpartyCreateAuthURI
    , module IdentityToolkit.Relyingparty.CreateAuthURI

    -- ** IdentitytoolkitRelyingpartyDeleteAccount
    , module IdentityToolkit.Relyingparty.DeleteAccount

    -- ** IdentitytoolkitRelyingpartyDownloadAccount
    , module IdentityToolkit.Relyingparty.DownloadAccount

    -- ** IdentitytoolkitRelyingpartyGetAccountInfo
    , module IdentityToolkit.Relyingparty.GetAccountInfo

    -- ** IdentitytoolkitRelyingpartyGetOobConfirmationCode
    , module IdentityToolkit.Relyingparty.GetOobConfirmationCode

    -- ** IdentitytoolkitRelyingpartyGetPublicKeys
    , module IdentityToolkit.Relyingparty.GetPublicKeys

    -- ** IdentitytoolkitRelyingpartyGetRecaptchaParam
    , module IdentityToolkit.Relyingparty.GetRecaptchaParam

    -- ** IdentitytoolkitRelyingpartyResetPassword
    , module IdentityToolkit.Relyingparty.ResetPassword

    -- ** IdentitytoolkitRelyingpartySetAccountInfo
    , module IdentityToolkit.Relyingparty.SetAccountInfo

    -- ** IdentitytoolkitRelyingpartyUploadAccount
    , module IdentityToolkit.Relyingparty.UploadAccount

    -- ** IdentitytoolkitRelyingpartyVerifyAssertion
    , module IdentityToolkit.Relyingparty.VerifyAssertion

    -- ** IdentitytoolkitRelyingpartyVerifyPassword
    , module IdentityToolkit.Relyingparty.VerifyPassword

    -- * Types

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

    -- ** IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , identitytoolkitRelyingpartyVerifyPasswordRequest
    , irvprEmail
    , irvprCaptchaChallenge
    , irvprPassword
    , irvprCaptchaResponse
    , irvprPendingIdToken

    -- ** IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , identitytoolkitRelyingpartyVerifyAssertionRequest
    , irvarPostBody
    , irvarReturnRefreshToken
    , irvarRequestUri
    , irvarPendingIdToken

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

    -- ** DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- ** DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

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

    -- ** CreateAuthURIResponse
    , CreateAuthURIResponse
    , createAuthURIResponse
    , caurProviderId
    , caurKind
    , caurAuthUri
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider

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

    -- ** IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , identitytoolkitRelyingpartyGetAccountInfoRequest
    , irgairEmail
    , irgairLocalId
    , irgairIdToken

    -- ** IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , identitytoolkitRelyingpartyGetPublicKeysResponse

    -- ** IdentitytoolkitRelyingpartyCreateAuthURIRequest
    , IdentitytoolkitRelyingpartyCreateAuthURIRequest
    , identitytoolkitRelyingpartyCreateAuthURIRequest
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

    -- ** IdentitytoolkitRelyingpartyUploadAccountRequest
    , IdentitytoolkitRelyingpartyUploadAccountRequest
    , identitytoolkitRelyingpartyUploadAccountRequest
    , iruarUsers
    , iruarMemoryCost
    , iruarSaltSeparator
    , iruarHashAlgorithm
    , iruarSignerKey
    , iruarRounds

    -- ** IdentitytoolkitRelyingpartyResetPasswordRequest
    , IdentitytoolkitRelyingpartyResetPasswordRequest
    , identitytoolkitRelyingpartyResetPasswordRequest
    , irrprEmail
    , irrprNewPassword
    , irrprOobCode
    , irrprOldPassword

    -- ** GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

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

    -- ** SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- ** GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IdentityToolkit.Relyingparty.CreateAuthURI
import           Network.Google.Resource.IdentityToolkit.Relyingparty.DeleteAccount
import           Network.Google.Resource.IdentityToolkit.Relyingparty.DownloadAccount
import           Network.Google.Resource.IdentityToolkit.Relyingparty.GetAccountInfo
import           Network.Google.Resource.IdentityToolkit.Relyingparty.GetOobConfirmationCode
import           Network.Google.Resource.IdentityToolkit.Relyingparty.GetPublicKeys
import           Network.Google.Resource.IdentityToolkit.Relyingparty.GetRecaptchaParam
import           Network.Google.Resource.IdentityToolkit.Relyingparty.ResetPassword
import           Network.Google.Resource.IdentityToolkit.Relyingparty.SetAccountInfo
import           Network.Google.Resource.IdentityToolkit.Relyingparty.UploadAccount
import           Network.Google.Resource.IdentityToolkit.Relyingparty.VerifyAssertion
import           Network.Google.Resource.IdentityToolkit.Relyingparty.VerifyPassword

{- $resources
TODO
-}

type IdentityToolkitAPI = Relyingparty

identityToolkitAPI :: Proxy IdentityToolkitAPI
identityToolkitAPI = Proxy
