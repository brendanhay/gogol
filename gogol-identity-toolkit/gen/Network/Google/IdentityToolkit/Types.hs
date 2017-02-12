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

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformScope

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
    , uipuiiScreenName
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
    , icWhiteListedAudiences
    , icSecret
    , icExperimentPercent
    , icProvider

    -- * UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiLastLoginAt
    , uiPhotoURL
    , uiCreatedAt
    , uiDisabled
    , uiCustomAuth
    , uiProviderUserInfo
    , uiValidSince
    , uiPasswordUpdatedAt
    , uiVersion
    , uiEmailVerified
    , uiSalt
    , uiDisplayName
    , uiPasswordHash
    , uiLocalId
    , uiRawPassword
    , uiScreenName

    -- * IdentitytoolkitRelyingPartySetProjectConfigResponse
    , IdentitytoolkitRelyingPartySetProjectConfigResponse
    , identitytoolkitRelyingPartySetProjectConfigResponse
    , irpspcrProjectId

    -- * IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
    , identitytoolkitRelyingPartyVerifyCustomTokenRequest
    , irpvctrInstanceId
    , irpvctrDelegatedProjectNumber
    , irpvctrToken
    , irpvctrReturnSecureToken

    -- * SetAccountInfoResponseProviderUserInfoItem
    , SetAccountInfoResponseProviderUserInfoItem
    , setAccountInfoResponseProviderUserInfoItem
    , sairpuiiProviderId
    , sairpuiiPhotoURL
    , sairpuiiFederatedId
    , sairpuiiDisplayName

    -- * IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , identitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    , irpcaurcpAddtional

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
    , irpspcrAuthorizedDomains
    , irpspcrAPIKey
    , irpspcrIdpConfig
    , irpspcrChangeEmailTemplate
    , irpspcrDelegatedProjectNumber
    , irpspcrVerifyEmailTemplate
    , irpspcrEnableAnonymousUser
    , irpspcrLegacyResetPasswordTemplate
    , irpspcrAllowPasswordUser
    , irpspcrResetPasswordTemplate
    , irpspcrUseEmailSending

    -- * IdentitytoolkitRelyingPartySetAccountInfoRequest
    , IdentitytoolkitRelyingPartySetAccountInfoRequest
    , identitytoolkitRelyingPartySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairInstanceId
    , irpsairLastLoginAt
    , irpsairPhotoURL
    , irpsairCaptchaChallenge
    , irpsairCreatedAt
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
    , irpvarReturnIdpCredential
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
    , irpgpcrEnableAnonymousUser
    , irpgpcrLegacyResetPasswordTemplate
    , irpgpcrAllowPasswordUser
    , irpgpcrResetPasswordTemplate
    , irpgpcrProjectId
    , irpgpcrUseEmailSending
    , irpgpcrDynamicLinksDomain

    -- * ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind
    , rprRequestType
    , rprNewEmail

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
    , irpuarAllowOverwrite
    , irpuarDelegatedProjectNumber
    , irpuarSanityCheck
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds
    , irpuarTargetProjectId

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
    , irpcaurCustomParameter
    , irpcaurIdentifier
    , irpcaurOtaApp
    , irpcaurOAuthConsumerKey
    , irpcaurHostedDomain
    , irpcaurAppId
    , irpcaurContinueURI
    , irpcaurAuthFlowType
    , irpcaurOAuthScope
    , irpcaurSessionId
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
    , iTargetProjectId

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
    , sairPasswordHash
    , sairLocalId
    , sairNewEmail
    , sairIdToken

    -- * IdentitytoolkitRelyingPartySignupNewUserRequest
    , IdentitytoolkitRelyingPartySignupNewUserRequest
    , identitytoolkitRelyingPartySignupNewUserRequest
    , irpsnurEmail
    , irpsnurInstanceId
    , irpsnurPhotoURL
    , irpsnurCaptchaChallenge
    , irpsnurDisabled
    , irpsnurPassword
    , irpsnurCaptchaResponse
    , irpsnurEmailVerified
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
    , varRawUserInfo
    , varOAuthExpireIn
    , varRefreshToken
    , varAppInstallationURL
    , varAction
    , varNeedEmail
    , varFederatedId
    , varOAuthIdToken
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
    , varScreenName
    , varErrorMessage
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
identityToolkitService :: ServiceConfig
identityToolkitService
  = defaultService (ServiceId "identitytoolkit:v3")
      "www.googleapis.com"

-- | View and administer all your Firebase data and settings
firebaseScope :: Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
