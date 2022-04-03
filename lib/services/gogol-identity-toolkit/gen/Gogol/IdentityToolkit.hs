{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IdentityToolkit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Help the third party sites to implement federated login.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference>
module Gogol.IdentityToolkit
  ( -- * Configuration
    identityToolkitService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Firebase'FullControl,

    -- * Resources

    -- ** identitytoolkit.relyingparty.createAuthUri
    IdentityToolkitRelyingpartyCreateAuthUriResource,
    IdentityToolkitRelyingpartyCreateAuthUri (..),
    newIdentityToolkitRelyingpartyCreateAuthUri,

    -- ** identitytoolkit.relyingparty.deleteAccount
    IdentityToolkitRelyingpartyDeleteAccountResource,
    IdentityToolkitRelyingpartyDeleteAccount (..),
    newIdentityToolkitRelyingpartyDeleteAccount,

    -- ** identitytoolkit.relyingparty.downloadAccount
    IdentityToolkitRelyingpartyDownloadAccountResource,
    IdentityToolkitRelyingpartyDownloadAccount (..),
    newIdentityToolkitRelyingpartyDownloadAccount,

    -- ** identitytoolkit.relyingparty.emailLinkSignin
    IdentityToolkitRelyingpartyEmailLinkSigninResource,
    IdentityToolkitRelyingpartyEmailLinkSignin (..),
    newIdentityToolkitRelyingpartyEmailLinkSignin,

    -- ** identitytoolkit.relyingparty.getAccountInfo
    IdentityToolkitRelyingpartyGetAccountInfoResource,
    IdentityToolkitRelyingpartyGetAccountInfo (..),
    newIdentityToolkitRelyingpartyGetAccountInfo,

    -- ** identitytoolkit.relyingparty.getOobConfirmationCode
    IdentityToolkitRelyingpartyGetOobConfirmationCodeResource,
    IdentityToolkitRelyingpartyGetOobConfirmationCode (..),
    newIdentityToolkitRelyingpartyGetOobConfirmationCode,

    -- ** identitytoolkit.relyingparty.getProjectConfig
    IdentityToolkitRelyingpartyGetProjectConfigResource,
    IdentityToolkitRelyingpartyGetProjectConfig (..),
    newIdentityToolkitRelyingpartyGetProjectConfig,

    -- ** identitytoolkit.relyingparty.getPublicKeys
    IdentityToolkitRelyingpartyGetPublicKeysResource,
    IdentityToolkitRelyingpartyGetPublicKeys (..),
    newIdentityToolkitRelyingpartyGetPublicKeys,

    -- ** identitytoolkit.relyingparty.getRecaptchaParam
    IdentityToolkitRelyingpartyGetRecaptchaParamResource,
    IdentityToolkitRelyingpartyGetRecaptchaParam (..),
    newIdentityToolkitRelyingpartyGetRecaptchaParam,

    -- ** identitytoolkit.relyingparty.resetPassword
    IdentityToolkitRelyingpartyResetPasswordResource,
    IdentityToolkitRelyingpartyResetPassword (..),
    newIdentityToolkitRelyingpartyResetPassword,

    -- ** identitytoolkit.relyingparty.sendVerificationCode
    IdentityToolkitRelyingpartySendVerificationCodeResource,
    IdentityToolkitRelyingpartySendVerificationCode (..),
    newIdentityToolkitRelyingpartySendVerificationCode,

    -- ** identitytoolkit.relyingparty.setAccountInfo
    IdentityToolkitRelyingpartySetAccountInfoResource,
    IdentityToolkitRelyingpartySetAccountInfo (..),
    newIdentityToolkitRelyingpartySetAccountInfo,

    -- ** identitytoolkit.relyingparty.setProjectConfig
    IdentityToolkitRelyingpartySetProjectConfigResource,
    IdentityToolkitRelyingpartySetProjectConfig (..),
    newIdentityToolkitRelyingpartySetProjectConfig,

    -- ** identitytoolkit.relyingparty.signOutUser
    IdentityToolkitRelyingpartySignOutUserResource,
    IdentityToolkitRelyingpartySignOutUser (..),
    newIdentityToolkitRelyingpartySignOutUser,

    -- ** identitytoolkit.relyingparty.signupNewUser
    IdentityToolkitRelyingpartySignupNewUserResource,
    IdentityToolkitRelyingpartySignupNewUser (..),
    newIdentityToolkitRelyingpartySignupNewUser,

    -- ** identitytoolkit.relyingparty.uploadAccount
    IdentityToolkitRelyingpartyUploadAccountResource,
    IdentityToolkitRelyingpartyUploadAccount (..),
    newIdentityToolkitRelyingpartyUploadAccount,

    -- ** identitytoolkit.relyingparty.verifyAssertion
    IdentityToolkitRelyingpartyVerifyAssertionResource,
    IdentityToolkitRelyingpartyVerifyAssertion (..),
    newIdentityToolkitRelyingpartyVerifyAssertion,

    -- ** identitytoolkit.relyingparty.verifyCustomToken
    IdentityToolkitRelyingpartyVerifyCustomTokenResource,
    IdentityToolkitRelyingpartyVerifyCustomToken (..),
    newIdentityToolkitRelyingpartyVerifyCustomToken,

    -- ** identitytoolkit.relyingparty.verifyPassword
    IdentityToolkitRelyingpartyVerifyPasswordResource,
    IdentityToolkitRelyingpartyVerifyPassword (..),
    newIdentityToolkitRelyingpartyVerifyPassword,

    -- ** identitytoolkit.relyingparty.verifyPhoneNumber
    IdentityToolkitRelyingpartyVerifyPhoneNumberResource,
    IdentityToolkitRelyingpartyVerifyPhoneNumber (..),
    newIdentityToolkitRelyingpartyVerifyPhoneNumber,

    -- * Types

    -- ** CreateAuthUriResponse
    CreateAuthUriResponse (..),
    newCreateAuthUriResponse,

    -- ** DeleteAccountResponse
    DeleteAccountResponse (..),
    newDeleteAccountResponse,

    -- ** DownloadAccountResponse
    DownloadAccountResponse (..),
    newDownloadAccountResponse,

    -- ** EmailLinkSigninResponse
    EmailLinkSigninResponse (..),
    newEmailLinkSigninResponse,

    -- ** EmailTemplate
    EmailTemplate (..),
    newEmailTemplate,

    -- ** GetAccountInfoResponse
    GetAccountInfoResponse (..),
    newGetAccountInfoResponse,

    -- ** GetOobConfirmationCodeResponse
    GetOobConfirmationCodeResponse (..),
    newGetOobConfirmationCodeResponse,

    -- ** GetRecaptchaParamResponse
    GetRecaptchaParamResponse (..),
    newGetRecaptchaParamResponse,

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest
    IdentitytoolkitRelyingpartyCreateAuthUriRequest (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest,

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter,

    -- ** IdentitytoolkitRelyingpartyDeleteAccountRequest
    IdentitytoolkitRelyingpartyDeleteAccountRequest (..),
    newIdentitytoolkitRelyingpartyDeleteAccountRequest,

    -- ** IdentitytoolkitRelyingpartyDownloadAccountRequest
    IdentitytoolkitRelyingpartyDownloadAccountRequest (..),
    newIdentitytoolkitRelyingpartyDownloadAccountRequest,

    -- ** IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest (..),
    newIdentitytoolkitRelyingpartyEmailLinkSigninRequest,

    -- ** IdentitytoolkitRelyingpartyGetAccountInfoRequest
    IdentitytoolkitRelyingpartyGetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartyGetAccountInfoRequest,

    -- ** IdentitytoolkitRelyingpartyGetProjectConfigResponse
    IdentitytoolkitRelyingpartyGetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartyGetProjectConfigResponse,

    -- ** IdentitytoolkitRelyingpartyGetPublicKeysResponse
    IdentitytoolkitRelyingpartyGetPublicKeysResponse (..),
    newIdentitytoolkitRelyingpartyGetPublicKeysResponse,

    -- ** IdentitytoolkitRelyingpartyResetPasswordRequest
    IdentitytoolkitRelyingpartyResetPasswordRequest (..),
    newIdentitytoolkitRelyingpartyResetPasswordRequest,

    -- ** IdentitytoolkitRelyingpartySendVerificationCodeRequest
    IdentitytoolkitRelyingpartySendVerificationCodeRequest (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeRequest,

    -- ** IdentitytoolkitRelyingpartySendVerificationCodeResponse
    IdentitytoolkitRelyingpartySendVerificationCodeResponse (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeResponse,

    -- ** IdentitytoolkitRelyingpartySetAccountInfoRequest
    IdentitytoolkitRelyingpartySetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartySetAccountInfoRequest,

    -- ** IdentitytoolkitRelyingpartySetProjectConfigRequest
    IdentitytoolkitRelyingpartySetProjectConfigRequest (..),
    newIdentitytoolkitRelyingpartySetProjectConfigRequest,

    -- ** IdentitytoolkitRelyingpartySetProjectConfigResponse
    IdentitytoolkitRelyingpartySetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartySetProjectConfigResponse,

    -- ** IdentitytoolkitRelyingpartySignOutUserRequest
    IdentitytoolkitRelyingpartySignOutUserRequest (..),
    newIdentitytoolkitRelyingpartySignOutUserRequest,

    -- ** IdentitytoolkitRelyingpartySignOutUserResponse
    IdentitytoolkitRelyingpartySignOutUserResponse (..),
    newIdentitytoolkitRelyingpartySignOutUserResponse,

    -- ** IdentitytoolkitRelyingpartySignupNewUserRequest
    IdentitytoolkitRelyingpartySignupNewUserRequest (..),
    newIdentitytoolkitRelyingpartySignupNewUserRequest,

    -- ** IdentitytoolkitRelyingpartyUploadAccountRequest
    IdentitytoolkitRelyingpartyUploadAccountRequest (..),
    newIdentitytoolkitRelyingpartyUploadAccountRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyAssertionRequest
    IdentitytoolkitRelyingpartyVerifyAssertionRequest (..),
    newIdentitytoolkitRelyingpartyVerifyAssertionRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest (..),
    newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPasswordRequest
    IdentitytoolkitRelyingpartyVerifyPasswordRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPasswordRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse,

    -- ** IdpConfig
    IdpConfig (..),
    newIdpConfig,

    -- ** Relyingparty
    Relyingparty (..),
    newRelyingparty,

    -- ** ResetPasswordResponse
    ResetPasswordResponse (..),
    newResetPasswordResponse,

    -- ** SetAccountInfoResponse
    SetAccountInfoResponse (..),
    newSetAccountInfoResponse,

    -- ** SetAccountInfoResponse_ProviderUserInfoItem
    SetAccountInfoResponse_ProviderUserInfoItem (..),
    newSetAccountInfoResponse_ProviderUserInfoItem,

    -- ** SignupNewUserResponse
    SignupNewUserResponse (..),
    newSignupNewUserResponse,

    -- ** UploadAccountResponse
    UploadAccountResponse (..),
    newUploadAccountResponse,

    -- ** UploadAccountResponse_ErrorItem
    UploadAccountResponse_ErrorItem (..),
    newUploadAccountResponse_ErrorItem,

    -- ** UserInfo
    UserInfo (..),
    newUserInfo,

    -- ** UserInfo_ProviderUserInfoItem
    UserInfo_ProviderUserInfoItem (..),
    newUserInfo_ProviderUserInfoItem,

    -- ** VerifyAssertionResponse
    VerifyAssertionResponse (..),
    newVerifyAssertionResponse,

    -- ** VerifyCustomTokenResponse
    VerifyCustomTokenResponse (..),
    newVerifyCustomTokenResponse,

    -- ** VerifyPasswordResponse
    VerifyPasswordResponse (..),
    newVerifyPasswordResponse,
  )
where

import Gogol.IdentityToolkit.Relyingparty.CreateAuthUri
import Gogol.IdentityToolkit.Relyingparty.DeleteAccount
import Gogol.IdentityToolkit.Relyingparty.DownloadAccount
import Gogol.IdentityToolkit.Relyingparty.EmailLinkSignin
import Gogol.IdentityToolkit.Relyingparty.GetAccountInfo
import Gogol.IdentityToolkit.Relyingparty.GetOobConfirmationCode
import Gogol.IdentityToolkit.Relyingparty.GetProjectConfig
import Gogol.IdentityToolkit.Relyingparty.GetPublicKeys
import Gogol.IdentityToolkit.Relyingparty.GetRecaptchaParam
import Gogol.IdentityToolkit.Relyingparty.ResetPassword
import Gogol.IdentityToolkit.Relyingparty.SendVerificationCode
import Gogol.IdentityToolkit.Relyingparty.SetAccountInfo
import Gogol.IdentityToolkit.Relyingparty.SetProjectConfig
import Gogol.IdentityToolkit.Relyingparty.SignOutUser
import Gogol.IdentityToolkit.Relyingparty.SignupNewUser
import Gogol.IdentityToolkit.Relyingparty.UploadAccount
import Gogol.IdentityToolkit.Relyingparty.VerifyAssertion
import Gogol.IdentityToolkit.Relyingparty.VerifyCustomToken
import Gogol.IdentityToolkit.Relyingparty.VerifyPassword
import Gogol.IdentityToolkit.Relyingparty.VerifyPhoneNumber
import Gogol.IdentityToolkit.Types
