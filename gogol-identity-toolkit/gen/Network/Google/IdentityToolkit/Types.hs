{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IdentityToolkit.Types
    (
    -- * Service URL
      identityToolkitURL

    -- * UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiPhotoURL
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

    -- * IdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , identitytoolkitRelyingPartyyVerifyPasswordRequest
    , irpvprEmail
    , irpvprCaptchaChallenge
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprPendingIdToken

    -- * IdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , identitytoolkitRelyingPartyyVerifyAssertionRequest
    , irpvarPostBody
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarPendingIdToken

    -- * IdentitytoolkitRelyingPartyySetAccountInfoRequest
    , IdentitytoolkitRelyingPartyySetAccountInfoRequest
    , identitytoolkitRelyingPartyySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairCaptchaChallenge
    , irpsairValidSince
    , irpsairOobCode
    , irpsairPassword
    , irpsairCaptchaResponse
    , irpsairEmailVerified
    , irpsairDisplayName
    , irpsairDisableUser
    , irpsairLocalId
    , irpsairIdToken
    , irpsairProvider

    -- * DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- * DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

    -- * ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind

    -- * UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- * CreateAuthURIResponse
    , CreateAuthURIResponse
    , createAuthURIResponse
    , caurProviderId
    , caurKind
    , caurAuthURI
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider

    -- * RelyingPartyy
    , RelyingPartyy
    , relyingPartyy
    , rpEmail
    , rpKind
    , rpUserIP
    , rpRequestType
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken

    -- * IdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , identitytoolkitRelyingPartyyGetAccountInfoRequest
    , irpgairEmail
    , irpgairLocalId
    , irpgairIdToken

    -- * IdentitytoolkitRelyingPartyyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyyGetPublicKeysResponse
    , identitytoolkitRelyingPartyyGetPublicKeysResponse

    -- * IdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , IdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , identitytoolkitRelyingPartyyCreateAuthURIRequest
    , irpcaurProviderId
    , irpcaurClientId
    , irpcaurContext
    , irpcaurIdentifier
    , irpcaurOtaApp
    , irpcaurOAuthConsumerKey
    , irpcaurAppId
    , irpcaurContinueURI
    , irpcaurOAuthScope
    , irpcaurOpenidRealm

    -- * IdentitytoolkitRelyingPartyyUploadAccountRequest
    , IdentitytoolkitRelyingPartyyUploadAccountRequest
    , identitytoolkitRelyingPartyyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds

    -- * IdentitytoolkitRelyingPartyyResetPasswordRequest
    , IdentitytoolkitRelyingPartyyResetPasswordRequest
    , identitytoolkitRelyingPartyyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOobCode
    , irprprOldPassword

    -- * GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- * GetOobConfirmationCodeResponse
    , GetOobConfirmationCodeResponse
    , getOobConfirmationCodeResponse
    , goccrKind
    , goccrOobCode

    -- * IdentitytoolkitRelyingPartyyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyyDeleteAccountRequest
    , identitytoolkitRelyingPartyyDeleteAccountRequest
    , irpdarLocalId

    -- * SetAccountInfoResponseProviderUserInfo
    , SetAccountInfoResponseProviderUserInfo
    , setAccountInfoResponseProviderUserInfo
    , sairpuiProviderId
    , sairpuiPhotoURL
    , sairpuiDisplayName

    -- * IdentitytoolkitRelyingPartyyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyyDownloadAccountRequest
    , identitytoolkitRelyingPartyyDownloadAccountRequest
    , irpdarNextPageToken
    , irpdarMaxResults

    -- * VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoURL
    , vprOAuthAccessToken
    , vprKind
    , vprOAuthExpireIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOAuthAuthorizationCode

    -- * VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varEmailRecycled
    , varPhotoURL
    , varVerifiedProvider
    , varContext
    , varNeedConfirmation
    , varOriginalEmail
    , varLastName
    , varOAuthAccessToken
    , varDateOfBirth
    , varKind
    , varOAuthExpireIn
    , varAppInstallationURL
    , varAction
    , varFederatedId
    , varAppScheme
    , varInputEmail
    , varEmailVerified
    , varLanguage
    , varFirstName
    , varDisplayName
    , varOAuthRequestToken
    , varOAuthScope
    , varNickName
    , varLocalId
    , varTimeZone
    , varIdToken
    , varOAuthAuthorizationCode

    -- * SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- * GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- * UploadAccountResponseError
    , UploadAccountResponseError
    , uploadAccountResponseError
    , uareMessage
    , uareIndex

    -- * UserInfoProviderUserInfo
    , UserInfoProviderUserInfo
    , userInfoProviderUserInfo
    , uipuiProviderId
    , uipuiPhotoURL
    , uipuiFederatedId
    , uipuiDisplayName
    ) where

import           Network.Google.IdentityToolkit.Types.Product
import           Network.Google.IdentityToolkit.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Google Identity Toolkit API.
identityToolkitURL :: BaseUrl
identityToolkitURL
  = BaseUrl Https
      "https://www.googleapis.com/identitytoolkit/v3/relyingparty/"
      443
