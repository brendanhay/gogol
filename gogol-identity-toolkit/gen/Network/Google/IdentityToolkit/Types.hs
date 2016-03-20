{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IdentityToolkit.Types
    (
    -- * Service Configuration
      identityToolkitService

    -- * UploadAccountResponseErrorItem
    , UploadAccountResponseErrorItem
    , uploadAccountResponseErrorItem
    , uareiMessage
    , uareiIndex

    -- * UserInfoProviderUserInfoItem
    , UserInfoProviderUserInfoItem
    , userInfoProviderUserInfoItem
    , uipuiiProviderId
    , uipuiiEmail
    , uipuiiPhotoURL
    , uipuiiFederatedId
    , uipuiiDisplayName
    , uipuiiRawId

    -- * VerifyCustomTokenResponse
    , VerifyCustomTokenResponse
    , verifyCustomTokenResponse
    , vctrKind
    , vctrRefreshToken
    , vctrExpiresIn
    , vctrIdToken

    -- * IdpConfig
    , IdpConfig
    , idpConfig
    , icClientId
    , icEnabled
    , icExperimentPercent
    , icProvider

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

    -- * IdentitytoolkitRelyingPartySetProjectConfigResponse
    , IdentitytoolkitRelyingPartySetProjectConfigResponse
    , identitytoolkitRelyingPartySetProjectConfigResponse
    , irpspcrProjectId

    -- * IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , identitytoolkitRelyingPartyVerifyCustomTokenRequest
    , irpvctrInstanceId
    , irpvctrToken
    , irpvctrReturnSecureToken

    -- * SetAccountInfoResponseProviderUserInfoItem
    , SetAccountInfoResponseProviderUserInfoItem
    , setAccountInfoResponseProviderUserInfoItem
    , sairpuiiProviderId
    , sairpuiiPhotoURL
    , sairpuiiDisplayName

    -- * IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , identitytoolkitRelyingPartyVerifyPasswordRequest
    , irpvprEmail
    , irpvprInstanceId
    , irpvprCaptchaChallenge
    , irpvprDelegatedProjectNumber
    , irpvprReturnSecureToken
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprIdToken
    , irpvprPendingIdToken

    -- * SignupNewUserResponse
    , SignupNewUserResponse
    , signupNewUserResponse
    , snurEmail
    , snurKind
    , snurRefreshToken
    , snurExpiresIn
    , snurDisplayName
    , snurLocalId
    , snurIdToken

    -- * IdentitytoolkitRelyingPartySetProjectConfigRequest
    , IdentitytoolkitRelyingPartySetProjectConfigRequest
    , identitytoolkitRelyingPartySetProjectConfigRequest
    , irpspcrAPIKey
    , irpspcrIdpConfig
    , irpspcrChangeEmailTemplate
    , irpspcrDelegatedProjectNumber
    , irpspcrVerifyEmailTemplate
    , irpspcrAllowPasswordUser
    , irpspcrResetPasswordTemplate
    , irpspcrUseEmailSending

    -- * IdentitytoolkitRelyingPartySetAccountInfoRequest
    , IdentitytoolkitRelyingPartySetAccountInfoRequest
    , identitytoolkitRelyingPartySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairInstanceId
    , irpsairPhotoURL
    , irpsairCaptchaChallenge
    , irpsairDelegatedProjectNumber
    , irpsairDeleteAttribute
    , irpsairDeleteProvider
    , irpsairReturnSecureToken
    , irpsairValidSince
    , irpsairOOBCode
    , irpsairPassword
    , irpsairCaptchaResponse
    , irpsairEmailVerified
    , irpsairDisplayName
    , irpsairDisableUser
    , irpsairLocalId
    , irpsairIdToken
    , irpsairProvider

    -- * IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , identitytoolkitRelyingPartyVerifyAssertionRequest
    , irpvarInstanceId
    , irpvarDelegatedProjectNumber
    , irpvarPostBody
    , irpvarReturnSecureToken
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarSessionId
    , irpvarIdToken
    , irpvarPendingIdToken

    -- * DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- * IdentitytoolkitRelyingPartySignOutUserResponse
    , IdentitytoolkitRelyingPartySignOutUserResponse
    , identitytoolkitRelyingPartySignOutUserResponse
    , irpsourLocalId

    -- * DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

    -- * IdentitytoolkitRelyingPartyGetProjectConfigResponse
    , IdentitytoolkitRelyingPartyGetProjectConfigResponse
    , identitytoolkitRelyingPartyGetProjectConfigResponse
    , irpgpcrAuthorizedDomains
    , irpgpcrAPIKey
    , irpgpcrIdpConfig
    , irpgpcrChangeEmailTemplate
    , irpgpcrVerifyEmailTemplate
    , irpgpcrAllowPasswordUser
    , irpgpcrResetPasswordTemplate
    , irpgpcrProjectId
    , irpgpcrUseEmailSending

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
    , caurAllProviders
    , caurAuthURI
    , caurCaptchaRequired
    , caurRegistered
    , caurSessionId
    , caurForExistingProvider

    -- * IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , identitytoolkitRelyingPartyGetPublicKeysResponse
    , irpgpkrAddtional

    -- * RelyingParty
    , RelyingParty
    , relyingParty
    , rpEmail
    , rpKind
    , rpUserIP
    , rpRequestType
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken

    -- * IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , identitytoolkitRelyingPartyGetAccountInfoRequest
    , irpgairEmail
    , irpgairDelegatedProjectNumber
    , irpgairLocalId
    , irpgairIdToken

    -- * EmailTemplate
    , EmailTemplate
    , emailTemplate
    , etSubject
    , etBody
    , etFormat
    , etFromDisplayName
    , etFrom
    , etReplyTo

    -- * IdentitytoolkitRelyingPartyUploadAccountRequest
    , IdentitytoolkitRelyingPartyUploadAccountRequest
    , identitytoolkitRelyingPartyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarDelegatedProjectNumber
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds

    -- * IdentitytoolkitRelyingPartyResetPasswordRequest
    , IdentitytoolkitRelyingPartyResetPasswordRequest
    , identitytoolkitRelyingPartyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOOBCode
    , irprprOldPassword

    -- * IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , identitytoolkitRelyingPartyCreateAuthURIRequest
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

    -- * GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- * IdentitytoolkitRelyingPartyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyDeleteAccountRequest
    , identitytoolkitRelyingPartyDeleteAccountRequest
    , irpdarDelegatedProjectNumber
    , irpdarLocalId
    , irpdarIdToken

    -- * GetOOBConfirmationCodeResponse
    , GetOOBConfirmationCodeResponse
    , getOOBConfirmationCodeResponse
    , goobccrEmail
    , goobccrKind
    , goobccrOOBCode

    -- * IdentitytoolkitRelyingPartyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyDownloadAccountRequest
    , identitytoolkitRelyingPartyDownloadAccountRequest
    , iNextPageToken
    , iDelegatedProjectNumber
    , iMaxResults

    -- * VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoURL
    , vprOAuthAccessToken
    , vprKind
    , vprOAuthExpireIn
    , vprRefreshToken
    , vprExpiresIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOAuthAuthorizationCode

    -- * SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairPhotoURL
    , sairKind
    , sairRefreshToken
    , sairProviderUserInfo
    , sairExpiresIn
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- * IdentitytoolkitRelyingPartySignupNewUserRequest
    , IdentitytoolkitRelyingPartySignupNewUserRequest
    , identitytoolkitRelyingPartySignupNewUserRequest
    , irpsnurEmail
    , irpsnurInstanceId
    , irpsnurCaptchaChallenge
    , irpsnurReturnSecureToken
    , irpsnurPassword
    , irpsnurCaptchaResponse
    , irpsnurDisplayName
    , irpsnurIdToken

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
    , varRefreshToken
    , varAppInstallationURL
    , varAction
    , varNeedEmail
    , varFederatedId
    , varAppScheme
    , varExpiresIn
    , varInputEmail
    , varEmailVerified
    , varOAuthTokenSecret
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

    -- * IdentitytoolkitRelyingPartySignOutUserRequest
    , IdentitytoolkitRelyingPartySignOutUserRequest
    , identitytoolkitRelyingPartySignOutUserRequest
    , iInstanceId
    , iLocalId

    -- * GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken
    ) where

import           Network.Google.IdentityToolkit.Types.Product
import           Network.Google.IdentityToolkit.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Identity Toolkit API. This contains the host and root path used as a starting point for constructing service requests.
identityToolkitService :: Service
identityToolkitService
  = defaultService (ServiceId "identitytoolkit:v3")
      "www.googleapis.com"
