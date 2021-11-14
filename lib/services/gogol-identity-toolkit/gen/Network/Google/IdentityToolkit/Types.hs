{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , uipuiiPhoneNumber
    , uipuiiDisplayName
    , uipuiiScreenName
    , uipuiiRawId

    -- * VerifyCustomTokenResponse
    , VerifyCustomTokenResponse
    , verifyCustomTokenResponse
    , vctrIsNewUser
    , vctrKind
    , vctrRefreshToken
    , vctrExpiresIn
    , vctrIdToken

    -- * IdentitytoolkitRelyingPartyVerifyPhoneNumberResponse
    , IdentitytoolkitRelyingPartyVerifyPhoneNumberResponse
    , identitytoolkitRelyingPartyVerifyPhoneNumberResponse
    , irpvpnrIsNewUser
    , irpvpnrTemporaryProof
    , irpvpnrVerificationProofExpiresIn
    , irpvpnrVerificationProof
    , irpvpnrTemporaryProofExpiresIn
    , irpvpnrRefreshToken
    , irpvpnrPhoneNumber
    , irpvpnrExpiresIn
    , irpvpnrLocalId
    , irpvpnrIdToken

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
    , uiCustomAttributes
    , uiValidSince
    , uiPasswordUpdatedAt
    , uiPhoneNumber
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
    , irpvprTenantProjectNumber
    , irpvprDelegatedProjectNumber
    , irpvprReturnSecureToken
    , irpvprTenantId
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprIdToken
    , irpvprPendingIdToken

    -- * IdentitytoolkitRelyingPartySendVerificationCodeRequest
    , IdentitytoolkitRelyingPartySendVerificationCodeRequest
    , identitytoolkitRelyingPartySendVerificationCodeRequest
    , irpsvcrPhoneNumber
    , irpsvcrRecaptchaToken
    , irpsvcrIosSecret
    , irpsvcrIosReceipt

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
    , irpsairCustomAttributes
    , irpsairValidSince
    , irpsairOOBCode
    , irpsairPassword
    , irpsairCaptchaResponse
    , irpsairPhoneNumber
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
    , irpvarTenantProjectNumber
    , irpvarDelegatedProjectNumber
    , irpvarPostBody
    , irpvarReturnSecureToken
    , irpvarTenantId
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarSessionId
    , irpvarAutoCreate
    , irpvarIdToken
    , irpvarPendingIdToken

    -- * EmailLinkSigninResponse
    , EmailLinkSigninResponse
    , emailLinkSigninResponse
    , elsrEmail
    , elsrIsNewUser
    , elsrKind
    , elsrRefreshToken
    , elsrExpiresIn
    , elsrLocalId
    , elsrIdToken

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
    , caurSigninMethods
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
    , rpIOSBundleId
    , rpEmail
    , rpContinueURL
    , rpKind
    , rpUserIP
    , rpAndroidInstallApp
    , rpIOSAppStoreId
    , rpRequestType
    , rpAndroidMinimumVersion
    , rpCanHandleCodeInApp
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken
    , rpAndroidPackageName

    -- * IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , identitytoolkitRelyingPartyGetAccountInfoRequest
    , irpgairEmail
    , irpgairDelegatedProjectNumber
    , irpgairPhoneNumber
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
    , irpuarBlockSize
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarAllowOverwrite
    , irpuarDelegatedProjectNumber
    , irpuarParallelization
    , irpuarCPUMemCost
    , irpuarSanityCheck
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarDkLen
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
    , irpcaurTenantProjectNumber
    , irpcaurIdentifier
    , irpcaurOtaApp
    , irpcaurOAuthConsumerKey
    , irpcaurTenantId
    , irpcaurHostedDomain
    , irpcaurAppId
    , irpcaurContinueURI
    , irpcaurAuthFlowType
    , irpcaurOAuthScope
    , irpcaurSessionId
    , irpcaurOpenidRealm

    -- * IdentitytoolkitRelyingPartySendVerificationCodeResponse
    , IdentitytoolkitRelyingPartySendVerificationCodeResponse
    , identitytoolkitRelyingPartySendVerificationCodeResponse
    , irpsvcrSessionInfo

    -- * GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- * IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest
    , IdentitytoolkitRelyingPartyVerifyPhoneNumberRequest
    , identitytoolkitRelyingPartyVerifyPhoneNumberRequest
    , iTemporaryProof
    , iVerificationProof
    , iOperation
    , iSessionInfo
    , iPhoneNumber
    , iCode
    , iIdToken

    -- * IdentitytoolkitRelyingPartyEmailLinkSigninRequest
    , IdentitytoolkitRelyingPartyEmailLinkSigninRequest
    , identitytoolkitRelyingPartyEmailLinkSigninRequest
    , irpelsrEmail
    , irpelsrOOBCode
    , irpelsrIdToken

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
    , sairEmailVerified
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
    , irpsnurTenantProjectNumber
    , irpsnurDisabled
    , irpsnurTenantId
    , irpsnurPassword
    , irpsnurCaptchaResponse
    , irpsnurPhoneNumber
    , irpsnurEmailVerified
    , irpsnurDisplayName
    , irpsnurLocalId
    , irpsnurIdToken

    -- * VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varIsNewUser
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

import Network.Google.IdentityToolkit.Types.Product
import Network.Google.IdentityToolkit.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Identity Toolkit API. This contains the host and root path used as a starting point for constructing service requests.
identityToolkitService :: ServiceConfig
identityToolkitService
  = defaultService (ServiceId "identitytoolkit:v3")
      "www.googleapis.com"

-- | View and administer all your Firebase data and settings
firebaseScope :: Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
