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
-- Module      : Gogol.IdentityToolkit.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IdentityToolkit.Internal.Product
  ( -- * CreateAuthUriResponse
    CreateAuthUriResponse (..),
    newCreateAuthUriResponse,

    -- * DeleteAccountResponse
    DeleteAccountResponse (..),
    newDeleteAccountResponse,

    -- * DownloadAccountResponse
    DownloadAccountResponse (..),
    newDownloadAccountResponse,

    -- * EmailLinkSigninResponse
    EmailLinkSigninResponse (..),
    newEmailLinkSigninResponse,

    -- * EmailTemplate
    EmailTemplate (..),
    newEmailTemplate,

    -- * GetAccountInfoResponse
    GetAccountInfoResponse (..),
    newGetAccountInfoResponse,

    -- * GetOobConfirmationCodeResponse
    GetOobConfirmationCodeResponse (..),
    newGetOobConfirmationCodeResponse,

    -- * GetRecaptchaParamResponse
    GetRecaptchaParamResponse (..),
    newGetRecaptchaParamResponse,

    -- * IdentitytoolkitRelyingpartyCreateAuthUriRequest
    IdentitytoolkitRelyingpartyCreateAuthUriRequest (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest,

    -- * IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter,

    -- * IdentitytoolkitRelyingpartyDeleteAccountRequest
    IdentitytoolkitRelyingpartyDeleteAccountRequest (..),
    newIdentitytoolkitRelyingpartyDeleteAccountRequest,

    -- * IdentitytoolkitRelyingpartyDownloadAccountRequest
    IdentitytoolkitRelyingpartyDownloadAccountRequest (..),
    newIdentitytoolkitRelyingpartyDownloadAccountRequest,

    -- * IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest (..),
    newIdentitytoolkitRelyingpartyEmailLinkSigninRequest,

    -- * IdentitytoolkitRelyingpartyGetAccountInfoRequest
    IdentitytoolkitRelyingpartyGetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartyGetAccountInfoRequest,

    -- * IdentitytoolkitRelyingpartyGetProjectConfigResponse
    IdentitytoolkitRelyingpartyGetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartyGetProjectConfigResponse,

    -- * IdentitytoolkitRelyingpartyGetPublicKeysResponse
    IdentitytoolkitRelyingpartyGetPublicKeysResponse (..),
    newIdentitytoolkitRelyingpartyGetPublicKeysResponse,

    -- * IdentitytoolkitRelyingpartyResetPasswordRequest
    IdentitytoolkitRelyingpartyResetPasswordRequest (..),
    newIdentitytoolkitRelyingpartyResetPasswordRequest,

    -- * IdentitytoolkitRelyingpartySendVerificationCodeRequest
    IdentitytoolkitRelyingpartySendVerificationCodeRequest (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeRequest,

    -- * IdentitytoolkitRelyingpartySendVerificationCodeResponse
    IdentitytoolkitRelyingpartySendVerificationCodeResponse (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeResponse,

    -- * IdentitytoolkitRelyingpartySetAccountInfoRequest
    IdentitytoolkitRelyingpartySetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartySetAccountInfoRequest,

    -- * IdentitytoolkitRelyingpartySetProjectConfigRequest
    IdentitytoolkitRelyingpartySetProjectConfigRequest (..),
    newIdentitytoolkitRelyingpartySetProjectConfigRequest,

    -- * IdentitytoolkitRelyingpartySetProjectConfigResponse
    IdentitytoolkitRelyingpartySetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartySetProjectConfigResponse,

    -- * IdentitytoolkitRelyingpartySignOutUserRequest
    IdentitytoolkitRelyingpartySignOutUserRequest (..),
    newIdentitytoolkitRelyingpartySignOutUserRequest,

    -- * IdentitytoolkitRelyingpartySignOutUserResponse
    IdentitytoolkitRelyingpartySignOutUserResponse (..),
    newIdentitytoolkitRelyingpartySignOutUserResponse,

    -- * IdentitytoolkitRelyingpartySignupNewUserRequest
    IdentitytoolkitRelyingpartySignupNewUserRequest (..),
    newIdentitytoolkitRelyingpartySignupNewUserRequest,

    -- * IdentitytoolkitRelyingpartyUploadAccountRequest
    IdentitytoolkitRelyingpartyUploadAccountRequest (..),
    newIdentitytoolkitRelyingpartyUploadAccountRequest,

    -- * IdentitytoolkitRelyingpartyVerifyAssertionRequest
    IdentitytoolkitRelyingpartyVerifyAssertionRequest (..),
    newIdentitytoolkitRelyingpartyVerifyAssertionRequest,

    -- * IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest (..),
    newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest,

    -- * IdentitytoolkitRelyingpartyVerifyPasswordRequest
    IdentitytoolkitRelyingpartyVerifyPasswordRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPasswordRequest,

    -- * IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest,

    -- * IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse,

    -- * IdpConfig
    IdpConfig (..),
    newIdpConfig,

    -- * Relyingparty
    Relyingparty (..),
    newRelyingparty,

    -- * ResetPasswordResponse
    ResetPasswordResponse (..),
    newResetPasswordResponse,

    -- * SetAccountInfoResponse
    SetAccountInfoResponse (..),
    newSetAccountInfoResponse,

    -- * SetAccountInfoResponse_ProviderUserInfoItem
    SetAccountInfoResponse_ProviderUserInfoItem (..),
    newSetAccountInfoResponse_ProviderUserInfoItem,

    -- * SignupNewUserResponse
    SignupNewUserResponse (..),
    newSignupNewUserResponse,

    -- * UploadAccountResponse
    UploadAccountResponse (..),
    newUploadAccountResponse,

    -- * UploadAccountResponse_ErrorItem
    UploadAccountResponse_ErrorItem (..),
    newUploadAccountResponse_ErrorItem,

    -- * UserInfo
    UserInfo (..),
    newUserInfo,

    -- * UserInfo_ProviderUserInfoItem
    UserInfo_ProviderUserInfoItem (..),
    newUserInfo_ProviderUserInfoItem,

    -- * VerifyAssertionResponse
    VerifyAssertionResponse (..),
    newVerifyAssertionResponse,

    -- * VerifyCustomTokenResponse
    VerifyCustomTokenResponse (..),
    newVerifyCustomTokenResponse,

    -- * VerifyPasswordResponse
    VerifyPasswordResponse (..),
    newVerifyPasswordResponse,
  )
where

import Gogol.IdentityToolkit.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Response of creating the IDP authentication URL.
--
-- /See:/ 'newCreateAuthUriResponse' smart constructor.
data CreateAuthUriResponse = CreateAuthUriResponse
  { -- | all providers the user has once used to do federated login
    allProviders :: (Core.Maybe [Core.Text]),
    -- | The URI used by the IDP to authenticate the user.
    authUri :: (Core.Maybe Core.Text),
    -- | True if captcha is required.
    captchaRequired :: (Core.Maybe Core.Bool),
    -- | True if the authUri is for user\'s existing provider.
    forExistingProvider :: (Core.Maybe Core.Bool),
    -- | The fixed string identitytoolkit#CreateAuthUriResponse\".
    kind :: Core.Text,
    -- | The provider ID of the auth URI.
    providerId :: (Core.Maybe Core.Text),
    -- | Whether the user is registered if the identifier is an email.
    registered :: (Core.Maybe Core.Bool),
    -- | Session ID which should be passed in the following verifyAssertion request.
    sessionId :: (Core.Maybe Core.Text),
    -- | All sign-in methods this user has used.
    signinMethods :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateAuthUriResponse' with the minimum fields required to make a request.
newCreateAuthUriResponse ::
  CreateAuthUriResponse
newCreateAuthUriResponse =
  CreateAuthUriResponse
    { allProviders = Core.Nothing,
      authUri = Core.Nothing,
      captchaRequired = Core.Nothing,
      forExistingProvider = Core.Nothing,
      kind = "identitytoolkit#CreateAuthUriResponse",
      providerId = Core.Nothing,
      registered = Core.Nothing,
      sessionId = Core.Nothing,
      signinMethods = Core.Nothing
    }

instance Core.FromJSON CreateAuthUriResponse where
  parseJSON =
    Core.withObject
      "CreateAuthUriResponse"
      ( \o ->
          CreateAuthUriResponse
            Core.<$> (o Core..:? "allProviders" Core..!= Core.mempty)
            Core.<*> (o Core..:? "authUri")
            Core.<*> (o Core..:? "captchaRequired")
            Core.<*> (o Core..:? "forExistingProvider")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#CreateAuthUriResponse"
                     )
            Core.<*> (o Core..:? "providerId")
            Core.<*> (o Core..:? "registered")
            Core.<*> (o Core..:? "sessionId")
            Core.<*> (o Core..:? "signinMethods" Core..!= Core.mempty)
      )

instance Core.ToJSON CreateAuthUriResponse where
  toJSON CreateAuthUriResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("allProviders" Core..=) Core.<$> allProviders,
            ("authUri" Core..=) Core.<$> authUri,
            ("captchaRequired" Core..=) Core.<$> captchaRequired,
            ("forExistingProvider" Core..=)
              Core.<$> forExistingProvider,
            Core.Just ("kind" Core..= kind),
            ("providerId" Core..=) Core.<$> providerId,
            ("registered" Core..=) Core.<$> registered,
            ("sessionId" Core..=) Core.<$> sessionId,
            ("signinMethods" Core..=) Core.<$> signinMethods
          ]
      )

-- | Respone of deleting account.
--
-- /See:/ 'newDeleteAccountResponse' smart constructor.
newtype DeleteAccountResponse = DeleteAccountResponse
  { -- | The fixed string \"identitytoolkit#DeleteAccountResponse\".
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteAccountResponse' with the minimum fields required to make a request.
newDeleteAccountResponse ::
  DeleteAccountResponse
newDeleteAccountResponse =
  DeleteAccountResponse {kind = "identitytoolkit#DeleteAccountResponse"}

instance Core.FromJSON DeleteAccountResponse where
  parseJSON =
    Core.withObject
      "DeleteAccountResponse"
      ( \o ->
          DeleteAccountResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#DeleteAccountResponse"
                     )
      )

instance Core.ToJSON DeleteAccountResponse where
  toJSON DeleteAccountResponse {..} =
    Core.object
      (Core.catMaybes [Core.Just ("kind" Core..= kind)])

-- | Response of downloading accounts in batch.
--
-- /See:/ 'newDownloadAccountResponse' smart constructor.
data DownloadAccountResponse = DownloadAccountResponse
  { -- | The fixed string \"identitytoolkit#DownloadAccountResponse\".
    kind :: Core.Text,
    -- | The next page token. To be used in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The user accounts data.
    users :: (Core.Maybe [UserInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DownloadAccountResponse' with the minimum fields required to make a request.
newDownloadAccountResponse ::
  DownloadAccountResponse
newDownloadAccountResponse =
  DownloadAccountResponse
    { kind = "identitytoolkit#DownloadAccountResponse",
      nextPageToken = Core.Nothing,
      users = Core.Nothing
    }

instance Core.FromJSON DownloadAccountResponse where
  parseJSON =
    Core.withObject
      "DownloadAccountResponse"
      ( \o ->
          DownloadAccountResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#DownloadAccountResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "users" Core..!= Core.mempty)
      )

instance Core.ToJSON DownloadAccountResponse where
  toJSON DownloadAccountResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("users" Core..=) Core.<$> users
          ]
      )

-- | Response of email signIn.
--
-- /See:/ 'newEmailLinkSigninResponse' smart constructor.
data EmailLinkSigninResponse = EmailLinkSigninResponse
  { -- | The user\'s email.
    email :: (Core.Maybe Core.Text),
    -- | Expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The STS id token to login the newly signed in user.
    idToken :: (Core.Maybe Core.Text),
    -- | Whether the user is new.
    isNewUser :: (Core.Maybe Core.Bool),
    -- | The fixed string \"identitytoolkit#EmailLinkSigninResponse\".
    kind :: Core.Text,
    -- | The RP local ID of the user.
    localId :: (Core.Maybe Core.Text),
    -- | The refresh token for the signed in user.
    refreshToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailLinkSigninResponse' with the minimum fields required to make a request.
newEmailLinkSigninResponse ::
  EmailLinkSigninResponse
newEmailLinkSigninResponse =
  EmailLinkSigninResponse
    { email = Core.Nothing,
      expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      isNewUser = Core.Nothing,
      kind = "identitytoolkit#EmailLinkSigninResponse",
      localId = Core.Nothing,
      refreshToken = Core.Nothing
    }

instance Core.FromJSON EmailLinkSigninResponse where
  parseJSON =
    Core.withObject
      "EmailLinkSigninResponse"
      ( \o ->
          EmailLinkSigninResponse
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "idToken")
            Core.<*> (o Core..:? "isNewUser")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#EmailLinkSigninResponse"
                     )
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "refreshToken")
      )

instance Core.ToJSON EmailLinkSigninResponse where
  toJSON EmailLinkSigninResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("idToken" Core..=) Core.<$> idToken,
            ("isNewUser" Core..=) Core.<$> isNewUser,
            Core.Just ("kind" Core..= kind),
            ("localId" Core..=) Core.<$> localId,
            ("refreshToken" Core..=) Core.<$> refreshToken
          ]
      )

-- | Template for an email template.
--
-- /See:/ 'newEmailTemplate' smart constructor.
data EmailTemplate = EmailTemplate
  { -- | Email body.
    body :: (Core.Maybe Core.Text),
    -- | Email body format.
    format :: (Core.Maybe Core.Text),
    -- | From address of the email.
    from :: (Core.Maybe Core.Text),
    -- | From display name.
    fromDisplayName :: (Core.Maybe Core.Text),
    -- | Reply-to address.
    replyTo :: (Core.Maybe Core.Text),
    -- | Subject of the email.
    subject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailTemplate' with the minimum fields required to make a request.
newEmailTemplate ::
  EmailTemplate
newEmailTemplate =
  EmailTemplate
    { body = Core.Nothing,
      format = Core.Nothing,
      from = Core.Nothing,
      fromDisplayName = Core.Nothing,
      replyTo = Core.Nothing,
      subject = Core.Nothing
    }

instance Core.FromJSON EmailTemplate where
  parseJSON =
    Core.withObject
      "EmailTemplate"
      ( \o ->
          EmailTemplate
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "from")
            Core.<*> (o Core..:? "fromDisplayName")
            Core.<*> (o Core..:? "replyTo")
            Core.<*> (o Core..:? "subject")
      )

instance Core.ToJSON EmailTemplate where
  toJSON EmailTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("format" Core..=) Core.<$> format,
            ("from" Core..=) Core.<$> from,
            ("fromDisplayName" Core..=) Core.<$> fromDisplayName,
            ("replyTo" Core..=) Core.<$> replyTo,
            ("subject" Core..=) Core.<$> subject
          ]
      )

-- | Response of getting account information.
--
-- /See:/ 'newGetAccountInfoResponse' smart constructor.
data GetAccountInfoResponse = GetAccountInfoResponse
  { -- | The fixed string \"identitytoolkit#GetAccountInfoResponse\".
    kind :: Core.Text,
    -- | The info of the users.
    users :: (Core.Maybe [UserInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetAccountInfoResponse' with the minimum fields required to make a request.
newGetAccountInfoResponse ::
  GetAccountInfoResponse
newGetAccountInfoResponse =
  GetAccountInfoResponse
    { kind = "identitytoolkit#GetAccountInfoResponse",
      users = Core.Nothing
    }

instance Core.FromJSON GetAccountInfoResponse where
  parseJSON =
    Core.withObject
      "GetAccountInfoResponse"
      ( \o ->
          GetAccountInfoResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#GetAccountInfoResponse"
                     )
            Core.<*> (o Core..:? "users" Core..!= Core.mempty)
      )

instance Core.ToJSON GetAccountInfoResponse where
  toJSON GetAccountInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("users" Core..=) Core.<$> users
          ]
      )

-- | Response of getting a code for user confirmation (reset password, change email etc.).
--
-- /See:/ 'newGetOobConfirmationCodeResponse' smart constructor.
data GetOobConfirmationCodeResponse = GetOobConfirmationCodeResponse
  { -- | The email address that the email is sent to.
    email :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#GetOobConfirmationCodeResponse\".
    kind :: Core.Text,
    -- | The code to be send to the user.
    oobCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetOobConfirmationCodeResponse' with the minimum fields required to make a request.
newGetOobConfirmationCodeResponse ::
  GetOobConfirmationCodeResponse
newGetOobConfirmationCodeResponse =
  GetOobConfirmationCodeResponse
    { email = Core.Nothing,
      kind = "identitytoolkit#GetOobConfirmationCodeResponse",
      oobCode = Core.Nothing
    }

instance Core.FromJSON GetOobConfirmationCodeResponse where
  parseJSON =
    Core.withObject
      "GetOobConfirmationCodeResponse"
      ( \o ->
          GetOobConfirmationCodeResponse
            Core.<$> (o Core..:? "email")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#GetOobConfirmationCodeResponse"
                     )
            Core.<*> (o Core..:? "oobCode")
      )

instance Core.ToJSON GetOobConfirmationCodeResponse where
  toJSON GetOobConfirmationCodeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            Core.Just ("kind" Core..= kind),
            ("oobCode" Core..=) Core.<$> oobCode
          ]
      )

-- | Response of getting recaptcha param.
--
-- /See:/ 'newGetRecaptchaParamResponse' smart constructor.
data GetRecaptchaParamResponse = GetRecaptchaParamResponse
  { -- | The fixed string \"identitytoolkit#GetRecaptchaParamResponse\".
    kind :: Core.Text,
    -- | Site key registered at recaptcha.
    recaptchaSiteKey :: (Core.Maybe Core.Text),
    -- | The stoken field for the recaptcha widget, used to request captcha challenge.
    recaptchaStoken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetRecaptchaParamResponse' with the minimum fields required to make a request.
newGetRecaptchaParamResponse ::
  GetRecaptchaParamResponse
newGetRecaptchaParamResponse =
  GetRecaptchaParamResponse
    { kind = "identitytoolkit#GetRecaptchaParamResponse",
      recaptchaSiteKey = Core.Nothing,
      recaptchaStoken = Core.Nothing
    }

instance Core.FromJSON GetRecaptchaParamResponse where
  parseJSON =
    Core.withObject
      "GetRecaptchaParamResponse"
      ( \o ->
          GetRecaptchaParamResponse
            Core.<$> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#GetRecaptchaParamResponse"
                     )
            Core.<*> (o Core..:? "recaptchaSiteKey")
            Core.<*> (o Core..:? "recaptchaStoken")
      )

instance Core.ToJSON GetRecaptchaParamResponse where
  toJSON GetRecaptchaParamResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("recaptchaSiteKey" Core..=)
              Core.<$> recaptchaSiteKey,
            ("recaptchaStoken" Core..=)
              Core.<$> recaptchaStoken
          ]
      )

-- | Request to get the IDP authentication URL.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyCreateAuthUriRequest' smart constructor.
data IdentitytoolkitRelyingpartyCreateAuthUriRequest = IdentitytoolkitRelyingpartyCreateAuthUriRequest
  { -- | The app ID of the mobile app, base64(CERT/SHA1):PACKAGE/NAME for Android, BUNDLE_ID for iOS.
    appId :: (Core.Maybe Core.Text),
    -- | Explicitly specify the auth flow type. Currently only support \"CODE_FLOW\" type. The field is only used for Google provider.
    authFlowType :: (Core.Maybe Core.Text),
    -- | The relying party OAuth client ID.
    clientId :: (Core.Maybe Core.Text),
    -- | The opaque value used by the client to maintain context info between the authentication request and the IDP callback.
    context :: (Core.Maybe Core.Text),
    -- | The URI to which the IDP redirects the user after the federated login flow.
    continueUri :: (Core.Maybe Core.Text),
    -- | The query parameter that client can customize by themselves in auth url. The following parameters are reserved for server so that they cannot be customized by clients: client/id, response/type, scope, redirect/uri, state, oauth/token.
    customParameter ::
      ( Core.Maybe
          IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
      ),
    -- | The hosted domain to restrict sign-in to accounts at that domain for Google Apps hosted accounts.
    hostedDomain :: (Core.Maybe Core.Text),
    -- | The email or federated ID of the user.
    identifier :: (Core.Maybe Core.Text),
    -- | The developer\'s consumer key for OpenId OAuth Extension
    oauthConsumerKey :: (Core.Maybe Core.Text),
    -- | Additional oauth scopes, beyond the basid user profile, that the user would be prompted to grant
    oauthScope :: (Core.Maybe Core.Text),
    -- | Optional realm for OpenID protocol. The sub string \"scheme:\/\/domain:port\" of the param \"continueUri\" is used if this is not set.
    openidRealm :: (Core.Maybe Core.Text),
    -- | The native app package for OTA installation.
    otaApp :: (Core.Maybe Core.Text),
    -- | The IdP ID. For white listed IdPs it\'s a short domain name e.g. google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s the OP identifier.
    providerId :: (Core.Maybe Core.Text),
    -- | The session_id passed by client.
    sessionId :: (Core.Maybe Core.Text),
    -- | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.
    tenantId :: (Core.Maybe Core.Text),
    -- | Tenant project number to be used for idp discovery.
    tenantProjectNumber :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyCreateAuthUriRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyCreateAuthUriRequest ::
  IdentitytoolkitRelyingpartyCreateAuthUriRequest
newIdentitytoolkitRelyingpartyCreateAuthUriRequest =
  IdentitytoolkitRelyingpartyCreateAuthUriRequest
    { appId = Core.Nothing,
      authFlowType = Core.Nothing,
      clientId = Core.Nothing,
      context = Core.Nothing,
      continueUri = Core.Nothing,
      customParameter = Core.Nothing,
      hostedDomain = Core.Nothing,
      identifier = Core.Nothing,
      oauthConsumerKey = Core.Nothing,
      oauthScope = Core.Nothing,
      openidRealm = Core.Nothing,
      otaApp = Core.Nothing,
      providerId = Core.Nothing,
      sessionId = Core.Nothing,
      tenantId = Core.Nothing,
      tenantProjectNumber = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyCreateAuthUriRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyCreateAuthUriRequest
            Core.<$> (o Core..:? "appId")
              Core.<*> (o Core..:? "authFlowType")
              Core.<*> (o Core..:? "clientId")
              Core.<*> (o Core..:? "context")
              Core.<*> (o Core..:? "continueUri")
              Core.<*> (o Core..:? "customParameter")
              Core.<*> (o Core..:? "hostedDomain")
              Core.<*> (o Core..:? "identifier")
              Core.<*> (o Core..:? "oauthConsumerKey")
              Core.<*> (o Core..:? "oauthScope")
              Core.<*> (o Core..:? "openidRealm")
              Core.<*> (o Core..:? "otaApp")
              Core.<*> (o Core..:? "providerId")
              Core.<*> (o Core..:? "sessionId")
              Core.<*> (o Core..:? "tenantId")
              Core.<*> (o Core..:? "tenantProjectNumber")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("appId" Core..=) Core.<$> appId,
              ("authFlowType" Core..=) Core.<$> authFlowType,
              ("clientId" Core..=) Core.<$> clientId,
              ("context" Core..=) Core.<$> context,
              ("continueUri" Core..=) Core.<$> continueUri,
              ("customParameter" Core..=) Core.<$> customParameter,
              ("hostedDomain" Core..=) Core.<$> hostedDomain,
              ("identifier" Core..=) Core.<$> identifier,
              ("oauthConsumerKey" Core..=)
                Core.<$> oauthConsumerKey,
              ("oauthScope" Core..=) Core.<$> oauthScope,
              ("openidRealm" Core..=) Core.<$> openidRealm,
              ("otaApp" Core..=) Core.<$> otaApp,
              ("providerId" Core..=) Core.<$> providerId,
              ("sessionId" Core..=) Core.<$> sessionId,
              ("tenantId" Core..=) Core.<$> tenantId,
              ("tenantProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> tenantProjectNumber
            ]
        )

-- | The query parameter that client can customize by themselves in auth url. The following parameters are reserved for server so that they cannot be customized by clients: client/id, response/type, scope, redirect/uri, state, oauth/token.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter' smart constructor.
newtype IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter = IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
  { -- | The customized query parameter.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter ::
  -- |  The customized query parameter. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter addtional =
  IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
    { addtional = addtional
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter"
      ( \o ->
          IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
  where
  toJSON
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter {..} =
      Core.toJSON addtional

-- | Request to delete account.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyDeleteAccountRequest' smart constructor.
data IdentitytoolkitRelyingpartyDeleteAccountRequest = IdentitytoolkitRelyingpartyDeleteAccountRequest
  { -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The GITKit token or STS id token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyDeleteAccountRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyDeleteAccountRequest ::
  IdentitytoolkitRelyingpartyDeleteAccountRequest
newIdentitytoolkitRelyingpartyDeleteAccountRequest =
  IdentitytoolkitRelyingpartyDeleteAccountRequest
    { delegatedProjectNumber = Core.Nothing,
      idToken = Core.Nothing,
      localId = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyDeleteAccountRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyDeleteAccountRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyDeleteAccountRequest
            Core.<$> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "localId")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyDeleteAccountRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyDeleteAccountRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("delegatedProjectNumber" Core..=)
                Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("idToken" Core..=) Core.<$> idToken,
              ("localId" Core..=) Core.<$> localId
            ]
        )

-- | Request to download user account in batch.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyDownloadAccountRequest' smart constructor.
data IdentitytoolkitRelyingpartyDownloadAccountRequest = IdentitytoolkitRelyingpartyDownloadAccountRequest
  { -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The max number of results to return in the response.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The token for the next page. This should be taken from the previous response.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Specify which project (field value is actually project id) to operate. Only used when provided credential.
    targetProjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyDownloadAccountRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyDownloadAccountRequest ::
  IdentitytoolkitRelyingpartyDownloadAccountRequest
newIdentitytoolkitRelyingpartyDownloadAccountRequest =
  IdentitytoolkitRelyingpartyDownloadAccountRequest
    { delegatedProjectNumber = Core.Nothing,
      maxResults = Core.Nothing,
      nextPageToken = Core.Nothing,
      targetProjectId = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyDownloadAccountRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyDownloadAccountRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyDownloadAccountRequest
            Core.<$> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "maxResults")
              Core.<*> (o Core..:? "nextPageToken")
              Core.<*> (o Core..:? "targetProjectId")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyDownloadAccountRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyDownloadAccountRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("delegatedProjectNumber" Core..=)
                Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("maxResults" Core..=) Core.<$> maxResults,
              ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("targetProjectId" Core..=)
                Core.<$> targetProjectId
            ]
        )

-- | Request to sign in with email.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyEmailLinkSigninRequest' smart constructor.
data IdentitytoolkitRelyingpartyEmailLinkSigninRequest = IdentitytoolkitRelyingpartyEmailLinkSigninRequest
  { -- | The email address of the user.
    email :: (Core.Maybe Core.Text),
    -- | Token for linking flow.
    idToken :: (Core.Maybe Core.Text),
    -- | The confirmation code.
    oobCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyEmailLinkSigninRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyEmailLinkSigninRequest ::
  IdentitytoolkitRelyingpartyEmailLinkSigninRequest
newIdentitytoolkitRelyingpartyEmailLinkSigninRequest =
  IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    { email = Core.Nothing,
      idToken = Core.Nothing,
      oobCode = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyEmailLinkSigninRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyEmailLinkSigninRequest
            Core.<$> (o Core..:? "email") Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "oobCode")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("email" Core..=) Core.<$> email,
              ("idToken" Core..=) Core.<$> idToken,
              ("oobCode" Core..=) Core.<$> oobCode
            ]
        )

-- | Request to get the account information.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyGetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingpartyGetAccountInfoRequest = IdentitytoolkitRelyingpartyGetAccountInfoRequest
  { -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The list of emails of the users to inquiry.
    email :: (Core.Maybe [Core.Text]),
    -- | The GITKit token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | The list of local ID\'s of the users to inquiry.
    localId :: (Core.Maybe [Core.Text]),
    -- | Privileged caller can query users by specified phone number.
    phoneNumber :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyGetAccountInfoRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyGetAccountInfoRequest ::
  IdentitytoolkitRelyingpartyGetAccountInfoRequest
newIdentitytoolkitRelyingpartyGetAccountInfoRequest =
  IdentitytoolkitRelyingpartyGetAccountInfoRequest
    { delegatedProjectNumber = Core.Nothing,
      email = Core.Nothing,
      idToken = Core.Nothing,
      localId = Core.Nothing,
      phoneNumber = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyGetAccountInfoRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyGetAccountInfoRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyGetAccountInfoRequest
            Core.<$> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "email" Core..!= Core.mempty)
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "localId" Core..!= Core.mempty)
              Core.<*> (o Core..:? "phoneNumber" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyGetAccountInfoRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyGetAccountInfoRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("delegatedProjectNumber" Core..=)
                Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("email" Core..=) Core.<$> email,
              ("idToken" Core..=) Core.<$> idToken,
              ("localId" Core..=) Core.<$> localId,
              ("phoneNumber" Core..=) Core.<$> phoneNumber
            ]
        )

-- | Response of getting the project configuration.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyGetProjectConfigResponse' smart constructor.
data IdentitytoolkitRelyingpartyGetProjectConfigResponse = IdentitytoolkitRelyingpartyGetProjectConfigResponse
  { -- | Whether to allow password user sign in or sign up.
    allowPasswordUser :: (Core.Maybe Core.Bool),
    -- | Browser API key, needed when making http request to Apiary.
    apiKey :: (Core.Maybe Core.Text),
    -- | Authorized domains.
    authorizedDomains :: (Core.Maybe [Core.Text]),
    -- | Change email template.
    changeEmailTemplate :: (Core.Maybe EmailTemplate),
    -- |
    dynamicLinksDomain :: (Core.Maybe Core.Text),
    -- | Whether anonymous user is enabled.
    enableAnonymousUser :: (Core.Maybe Core.Bool),
    -- | OAuth2 provider configuration.
    idpConfig :: (Core.Maybe [IdpConfig]),
    -- | Legacy reset password email template.
    legacyResetPasswordTemplate :: (Core.Maybe EmailTemplate),
    -- | Project ID of the relying party.
    projectId :: (Core.Maybe Core.Text),
    -- | Reset password email template.
    resetPasswordTemplate :: (Core.Maybe EmailTemplate),
    -- | Whether to use email sending provided by Firebear.
    useEmailSending :: (Core.Maybe Core.Bool),
    -- | Verify email template.
    verifyEmailTemplate :: (Core.Maybe EmailTemplate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyGetProjectConfigResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyGetProjectConfigResponse ::
  IdentitytoolkitRelyingpartyGetProjectConfigResponse
newIdentitytoolkitRelyingpartyGetProjectConfigResponse =
  IdentitytoolkitRelyingpartyGetProjectConfigResponse
    { allowPasswordUser = Core.Nothing,
      apiKey = Core.Nothing,
      authorizedDomains = Core.Nothing,
      changeEmailTemplate = Core.Nothing,
      dynamicLinksDomain = Core.Nothing,
      enableAnonymousUser = Core.Nothing,
      idpConfig = Core.Nothing,
      legacyResetPasswordTemplate = Core.Nothing,
      projectId = Core.Nothing,
      resetPasswordTemplate = Core.Nothing,
      useEmailSending = Core.Nothing,
      verifyEmailTemplate = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyGetProjectConfigResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyGetProjectConfigResponse"
      ( \o ->
          IdentitytoolkitRelyingpartyGetProjectConfigResponse
            Core.<$> (o Core..:? "allowPasswordUser")
              Core.<*> (o Core..:? "apiKey")
              Core.<*> (o Core..:? "authorizedDomains" Core..!= Core.mempty)
              Core.<*> (o Core..:? "changeEmailTemplate")
              Core.<*> (o Core..:? "dynamicLinksDomain")
              Core.<*> (o Core..:? "enableAnonymousUser")
              Core.<*> (o Core..:? "idpConfig" Core..!= Core.mempty)
              Core.<*> (o Core..:? "legacyResetPasswordTemplate")
              Core.<*> (o Core..:? "projectId")
              Core.<*> (o Core..:? "resetPasswordTemplate")
              Core.<*> (o Core..:? "useEmailSending")
              Core.<*> (o Core..:? "verifyEmailTemplate")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyGetProjectConfigResponse
  where
  toJSON
    IdentitytoolkitRelyingpartyGetProjectConfigResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("allowPasswordUser" Core..=)
                Core.<$> allowPasswordUser,
              ("apiKey" Core..=) Core.<$> apiKey,
              ("authorizedDomains" Core..=)
                Core.<$> authorizedDomains,
              ("changeEmailTemplate" Core..=)
                Core.<$> changeEmailTemplate,
              ("dynamicLinksDomain" Core..=)
                Core.<$> dynamicLinksDomain,
              ("enableAnonymousUser" Core..=)
                Core.<$> enableAnonymousUser,
              ("idpConfig" Core..=) Core.<$> idpConfig,
              ("legacyResetPasswordTemplate" Core..=)
                Core.<$> legacyResetPasswordTemplate,
              ("projectId" Core..=) Core.<$> projectId,
              ("resetPasswordTemplate" Core..=)
                Core.<$> resetPasswordTemplate,
              ("useEmailSending" Core..=) Core.<$> useEmailSending,
              ("verifyEmailTemplate" Core..=)
                Core.<$> verifyEmailTemplate
            ]
        )

-- | Respone of getting public keys.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyGetPublicKeysResponse' smart constructor.
newtype IdentitytoolkitRelyingpartyGetPublicKeysResponse = IdentitytoolkitRelyingpartyGetPublicKeysResponse
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyGetPublicKeysResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyGetPublicKeysResponse ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  IdentitytoolkitRelyingpartyGetPublicKeysResponse
newIdentitytoolkitRelyingpartyGetPublicKeysResponse addtional =
  IdentitytoolkitRelyingpartyGetPublicKeysResponse {addtional = addtional}

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyGetPublicKeysResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyGetPublicKeysResponse"
      ( \o ->
          IdentitytoolkitRelyingpartyGetPublicKeysResponse
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyGetPublicKeysResponse
  where
  toJSON
    IdentitytoolkitRelyingpartyGetPublicKeysResponse {..} =
      Core.toJSON addtional

-- | Request to reset the password.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyResetPasswordRequest' smart constructor.
data IdentitytoolkitRelyingpartyResetPasswordRequest = IdentitytoolkitRelyingpartyResetPasswordRequest
  { -- | The email address of the user.
    email :: (Core.Maybe Core.Text),
    -- | The new password inputted by the user.
    newPassword' :: (Core.Maybe Core.Text),
    -- | The old password inputted by the user.
    oldPassword :: (Core.Maybe Core.Text),
    -- | The confirmation code.
    oobCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyResetPasswordRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyResetPasswordRequest ::
  IdentitytoolkitRelyingpartyResetPasswordRequest
newIdentitytoolkitRelyingpartyResetPasswordRequest =
  IdentitytoolkitRelyingpartyResetPasswordRequest
    { email = Core.Nothing,
      newPassword' = Core.Nothing,
      oldPassword = Core.Nothing,
      oobCode = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyResetPasswordRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyResetPasswordRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyResetPasswordRequest
            Core.<$> (o Core..:? "email")
              Core.<*> (o Core..:? "newPassword")
              Core.<*> (o Core..:? "oldPassword")
              Core.<*> (o Core..:? "oobCode")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyResetPasswordRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyResetPasswordRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("email" Core..=) Core.<$> email,
              ("newPassword" Core..=) Core.<$> newPassword',
              ("oldPassword" Core..=) Core.<$> oldPassword,
              ("oobCode" Core..=) Core.<$> oobCode
            ]
        )

-- | Request for Identitytoolkit-SendVerificationCode
--
-- /See:/ 'newIdentitytoolkitRelyingpartySendVerificationCodeRequest' smart constructor.
data IdentitytoolkitRelyingpartySendVerificationCodeRequest = IdentitytoolkitRelyingpartySendVerificationCodeRequest
  { -- | Receipt of successful app token validation with APNS.
    iosReceipt :: (Core.Maybe Core.Text),
    -- | Secret delivered to iOS app via APNS.
    iosSecret :: (Core.Maybe Core.Text),
    -- | The phone number to send the verification code to in E.164 format.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Recaptcha solution.
    recaptchaToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySendVerificationCodeRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySendVerificationCodeRequest ::
  IdentitytoolkitRelyingpartySendVerificationCodeRequest
newIdentitytoolkitRelyingpartySendVerificationCodeRequest =
  IdentitytoolkitRelyingpartySendVerificationCodeRequest
    { iosReceipt = Core.Nothing,
      iosSecret = Core.Nothing,
      phoneNumber = Core.Nothing,
      recaptchaToken = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySendVerificationCodeRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySendVerificationCodeRequest"
      ( \o ->
          IdentitytoolkitRelyingpartySendVerificationCodeRequest
            Core.<$> (o Core..:? "iosReceipt")
              Core.<*> (o Core..:? "iosSecret")
              Core.<*> (o Core..:? "phoneNumber")
              Core.<*> (o Core..:? "recaptchaToken")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySendVerificationCodeRequest
  where
  toJSON
    IdentitytoolkitRelyingpartySendVerificationCodeRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("iosReceipt" Core..=) Core.<$> iosReceipt,
              ("iosSecret" Core..=) Core.<$> iosSecret,
              ("phoneNumber" Core..=) Core.<$> phoneNumber,
              ("recaptchaToken" Core..=) Core.<$> recaptchaToken
            ]
        )

-- | Response for Identitytoolkit-SendVerificationCode
--
-- /See:/ 'newIdentitytoolkitRelyingpartySendVerificationCodeResponse' smart constructor.
newtype IdentitytoolkitRelyingpartySendVerificationCodeResponse = IdentitytoolkitRelyingpartySendVerificationCodeResponse
  { -- | Encrypted session information
    sessionInfo :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySendVerificationCodeResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySendVerificationCodeResponse ::
  IdentitytoolkitRelyingpartySendVerificationCodeResponse
newIdentitytoolkitRelyingpartySendVerificationCodeResponse =
  IdentitytoolkitRelyingpartySendVerificationCodeResponse
    { sessionInfo = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySendVerificationCodeResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySendVerificationCodeResponse"
      ( \o ->
          IdentitytoolkitRelyingpartySendVerificationCodeResponse
            Core.<$> (o Core..:? "sessionInfo")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySendVerificationCodeResponse
  where
  toJSON
    IdentitytoolkitRelyingpartySendVerificationCodeResponse {..} =
      Core.object
        ( Core.catMaybes
            [("sessionInfo" Core..=) Core.<$> sessionInfo]
        )

-- | Request to set the account information.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingpartySetAccountInfoRequest = IdentitytoolkitRelyingpartySetAccountInfoRequest
  { -- | The captcha challenge.
    captchaChallenge :: (Core.Maybe Core.Text),
    -- | Response to the captcha.
    captchaResponse :: (Core.Maybe Core.Text),
    -- | The timestamp when the account is created.
    createdAt :: (Core.Maybe Core.Int64),
    -- | The custom attributes to be set in the user\'s id token.
    customAttributes :: (Core.Maybe Core.Text),
    -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The attributes users request to delete.
    deleteAttribute :: (Core.Maybe [Core.Text]),
    -- | The IDPs the user request to delete.
    deleteProvider :: (Core.Maybe [Core.Text]),
    -- | Whether to disable the user.
    disableUser :: (Core.Maybe Core.Bool),
    -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | Mark the email as verified or not.
    emailVerified :: (Core.Maybe Core.Bool),
    -- | The GITKit token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | Last login timestamp.
    lastLoginAt :: (Core.Maybe Core.Int64),
    -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text),
    -- | The out-of-band code of the change email request.
    oobCode :: (Core.Maybe Core.Text),
    -- | The new password of the user.
    password :: (Core.Maybe Core.Text),
    -- | Privileged caller can update user with specified phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The photo url of the user.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The associated IDPs of the user.
    provider :: (Core.Maybe [Core.Text]),
    -- | Whether return sts id token and refresh token instead of gitkit token.
    returnSecureToken :: (Core.Maybe Core.Bool),
    -- | Mark the user to upgrade to federated login.
    upgradeToFederatedLogin :: (Core.Maybe Core.Bool),
    -- | Timestamp in seconds for valid login token.
    validSince :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySetAccountInfoRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySetAccountInfoRequest ::
  IdentitytoolkitRelyingpartySetAccountInfoRequest
newIdentitytoolkitRelyingpartySetAccountInfoRequest =
  IdentitytoolkitRelyingpartySetAccountInfoRequest
    { captchaChallenge = Core.Nothing,
      captchaResponse = Core.Nothing,
      createdAt = Core.Nothing,
      customAttributes = Core.Nothing,
      delegatedProjectNumber = Core.Nothing,
      deleteAttribute = Core.Nothing,
      deleteProvider = Core.Nothing,
      disableUser = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      emailVerified = Core.Nothing,
      idToken = Core.Nothing,
      instanceId = Core.Nothing,
      lastLoginAt = Core.Nothing,
      localId = Core.Nothing,
      oobCode = Core.Nothing,
      password = Core.Nothing,
      phoneNumber = Core.Nothing,
      photoUrl = Core.Nothing,
      provider = Core.Nothing,
      returnSecureToken = Core.Nothing,
      upgradeToFederatedLogin = Core.Nothing,
      validSince = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySetAccountInfoRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySetAccountInfoRequest"
      ( \o ->
          IdentitytoolkitRelyingpartySetAccountInfoRequest
            Core.<$> (o Core..:? "captchaChallenge")
              Core.<*> (o Core..:? "captchaResponse")
              Core.<*> (o Core..:? "createdAt")
              Core.<*> (o Core..:? "customAttributes")
              Core.<*> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "deleteAttribute" Core..!= Core.mempty)
              Core.<*> (o Core..:? "deleteProvider" Core..!= Core.mempty)
              Core.<*> (o Core..:? "disableUser")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "email")
              Core.<*> (o Core..:? "emailVerified")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "lastLoginAt")
              Core.<*> (o Core..:? "localId")
              Core.<*> (o Core..:? "oobCode")
              Core.<*> (o Core..:? "password")
              Core.<*> (o Core..:? "phoneNumber")
              Core.<*> (o Core..:? "photoUrl")
              Core.<*> (o Core..:? "provider" Core..!= Core.mempty)
              Core.<*> (o Core..:? "returnSecureToken")
              Core.<*> (o Core..:? "upgradeToFederatedLogin")
              Core.<*> (o Core..:? "validSince")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySetAccountInfoRequest
  where
  toJSON
    IdentitytoolkitRelyingpartySetAccountInfoRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("captchaChallenge" Core..=)
                Core.<$> captchaChallenge,
              ("captchaResponse" Core..=) Core.<$> captchaResponse,
              ("createdAt" Core..=) Core.. Core.AsText
                Core.<$> createdAt,
              ("customAttributes" Core..=)
                Core.<$> customAttributes,
              ("delegatedProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("deleteAttribute" Core..=) Core.<$> deleteAttribute,
              ("deleteProvider" Core..=) Core.<$> deleteProvider,
              ("disableUser" Core..=) Core.<$> disableUser,
              ("displayName" Core..=) Core.<$> displayName,
              ("email" Core..=) Core.<$> email,
              ("emailVerified" Core..=) Core.<$> emailVerified,
              ("idToken" Core..=) Core.<$> idToken,
              ("instanceId" Core..=) Core.<$> instanceId,
              ("lastLoginAt" Core..=) Core.. Core.AsText
                Core.<$> lastLoginAt,
              ("localId" Core..=) Core.<$> localId,
              ("oobCode" Core..=) Core.<$> oobCode,
              ("password" Core..=) Core.<$> password,
              ("phoneNumber" Core..=) Core.<$> phoneNumber,
              ("photoUrl" Core..=) Core.<$> photoUrl,
              ("provider" Core..=) Core.<$> provider,
              ("returnSecureToken" Core..=)
                Core.<$> returnSecureToken,
              ("upgradeToFederatedLogin" Core..=)
                Core.<$> upgradeToFederatedLogin,
              ("validSince" Core..=) Core.. Core.AsText
                Core.<$> validSince
            ]
        )

-- | Request to set the project configuration.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySetProjectConfigRequest' smart constructor.
data IdentitytoolkitRelyingpartySetProjectConfigRequest = IdentitytoolkitRelyingpartySetProjectConfigRequest
  { -- | Whether to allow password user sign in or sign up.
    allowPasswordUser :: (Core.Maybe Core.Bool),
    -- | Browser API key, needed when making http request to Apiary.
    apiKey :: (Core.Maybe Core.Text),
    -- | Authorized domains for widget redirect.
    authorizedDomains :: (Core.Maybe [Core.Text]),
    -- | Change email template.
    changeEmailTemplate :: (Core.Maybe EmailTemplate),
    -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | Whether to enable anonymous user.
    enableAnonymousUser :: (Core.Maybe Core.Bool),
    -- | Oauth2 provider configuration.
    idpConfig :: (Core.Maybe [IdpConfig]),
    -- | Legacy reset password email template.
    legacyResetPasswordTemplate :: (Core.Maybe EmailTemplate),
    -- | Reset password email template.
    resetPasswordTemplate :: (Core.Maybe EmailTemplate),
    -- | Whether to use email sending provided by Firebear.
    useEmailSending :: (Core.Maybe Core.Bool),
    -- | Verify email template.
    verifyEmailTemplate :: (Core.Maybe EmailTemplate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySetProjectConfigRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySetProjectConfigRequest ::
  IdentitytoolkitRelyingpartySetProjectConfigRequest
newIdentitytoolkitRelyingpartySetProjectConfigRequest =
  IdentitytoolkitRelyingpartySetProjectConfigRequest
    { allowPasswordUser = Core.Nothing,
      apiKey = Core.Nothing,
      authorizedDomains = Core.Nothing,
      changeEmailTemplate = Core.Nothing,
      delegatedProjectNumber = Core.Nothing,
      enableAnonymousUser = Core.Nothing,
      idpConfig = Core.Nothing,
      legacyResetPasswordTemplate = Core.Nothing,
      resetPasswordTemplate = Core.Nothing,
      useEmailSending = Core.Nothing,
      verifyEmailTemplate = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySetProjectConfigRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySetProjectConfigRequest"
      ( \o ->
          IdentitytoolkitRelyingpartySetProjectConfigRequest
            Core.<$> (o Core..:? "allowPasswordUser")
              Core.<*> (o Core..:? "apiKey")
              Core.<*> (o Core..:? "authorizedDomains" Core..!= Core.mempty)
              Core.<*> (o Core..:? "changeEmailTemplate")
              Core.<*> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "enableAnonymousUser")
              Core.<*> (o Core..:? "idpConfig" Core..!= Core.mempty)
              Core.<*> (o Core..:? "legacyResetPasswordTemplate")
              Core.<*> (o Core..:? "resetPasswordTemplate")
              Core.<*> (o Core..:? "useEmailSending")
              Core.<*> (o Core..:? "verifyEmailTemplate")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySetProjectConfigRequest
  where
  toJSON
    IdentitytoolkitRelyingpartySetProjectConfigRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("allowPasswordUser" Core..=)
                Core.<$> allowPasswordUser,
              ("apiKey" Core..=) Core.<$> apiKey,
              ("authorizedDomains" Core..=)
                Core.<$> authorizedDomains,
              ("changeEmailTemplate" Core..=)
                Core.<$> changeEmailTemplate,
              ("delegatedProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("enableAnonymousUser" Core..=)
                Core.<$> enableAnonymousUser,
              ("idpConfig" Core..=) Core.<$> idpConfig,
              ("legacyResetPasswordTemplate" Core..=)
                Core.<$> legacyResetPasswordTemplate,
              ("resetPasswordTemplate" Core..=)
                Core.<$> resetPasswordTemplate,
              ("useEmailSending" Core..=) Core.<$> useEmailSending,
              ("verifyEmailTemplate" Core..=)
                Core.<$> verifyEmailTemplate
            ]
        )

-- | Response of setting the project configuration.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySetProjectConfigResponse' smart constructor.
newtype IdentitytoolkitRelyingpartySetProjectConfigResponse = IdentitytoolkitRelyingpartySetProjectConfigResponse
  { -- | Project ID of the relying party.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySetProjectConfigResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySetProjectConfigResponse ::
  IdentitytoolkitRelyingpartySetProjectConfigResponse
newIdentitytoolkitRelyingpartySetProjectConfigResponse =
  IdentitytoolkitRelyingpartySetProjectConfigResponse {projectId = Core.Nothing}

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySetProjectConfigResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySetProjectConfigResponse"
      ( \o ->
          IdentitytoolkitRelyingpartySetProjectConfigResponse
            Core.<$> (o Core..:? "projectId")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySetProjectConfigResponse
  where
  toJSON
    IdentitytoolkitRelyingpartySetProjectConfigResponse {..} =
      Core.object
        ( Core.catMaybes
            [("projectId" Core..=) Core.<$> projectId]
        )

-- | Request to sign out user.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySignOutUserRequest' smart constructor.
data IdentitytoolkitRelyingpartySignOutUserRequest = IdentitytoolkitRelyingpartySignOutUserRequest
  { -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySignOutUserRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySignOutUserRequest ::
  IdentitytoolkitRelyingpartySignOutUserRequest
newIdentitytoolkitRelyingpartySignOutUserRequest =
  IdentitytoolkitRelyingpartySignOutUserRequest
    { instanceId = Core.Nothing,
      localId = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySignOutUserRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySignOutUserRequest"
      ( \o ->
          IdentitytoolkitRelyingpartySignOutUserRequest
            Core.<$> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "localId")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySignOutUserRequest
  where
  toJSON
    IdentitytoolkitRelyingpartySignOutUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("instanceId" Core..=) Core.<$> instanceId,
              ("localId" Core..=) Core.<$> localId
            ]
        )

-- | Response of signing out user.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySignOutUserResponse' smart constructor.
newtype IdentitytoolkitRelyingpartySignOutUserResponse = IdentitytoolkitRelyingpartySignOutUserResponse
  { -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySignOutUserResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySignOutUserResponse ::
  IdentitytoolkitRelyingpartySignOutUserResponse
newIdentitytoolkitRelyingpartySignOutUserResponse =
  IdentitytoolkitRelyingpartySignOutUserResponse {localId = Core.Nothing}

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySignOutUserResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySignOutUserResponse"
      ( \o ->
          IdentitytoolkitRelyingpartySignOutUserResponse
            Core.<$> (o Core..:? "localId")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySignOutUserResponse
  where
  toJSON
    IdentitytoolkitRelyingpartySignOutUserResponse {..} =
      Core.object
        ( Core.catMaybes
            [("localId" Core..=) Core.<$> localId]
        )

-- | Request to signup new user, create anonymous user or anonymous user reauth.
--
-- /See:/ 'newIdentitytoolkitRelyingpartySignupNewUserRequest' smart constructor.
data IdentitytoolkitRelyingpartySignupNewUserRequest = IdentitytoolkitRelyingpartySignupNewUserRequest
  { -- | The captcha challenge.
    captchaChallenge :: (Core.Maybe Core.Text),
    -- | Response to the captcha.
    captchaResponse :: (Core.Maybe Core.Text),
    -- | Whether to disable the user. Only can be used by service account.
    disabled :: (Core.Maybe Core.Bool),
    -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | Mark the email as verified or not. Only can be used by service account.
    emailVerified :: (Core.Maybe Core.Bool),
    -- | The GITKit token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | Privileged caller can create user with specified user id.
    localId :: (Core.Maybe Core.Text),
    -- | The new password of the user.
    password :: (Core.Maybe Core.Text),
    -- | Privileged caller can create user with specified phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The photo url of the user.
    photoUrl :: (Core.Maybe Core.Text),
    -- | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.
    tenantId :: (Core.Maybe Core.Text),
    -- | Tenant project number to be used for idp discovery.
    tenantProjectNumber :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySignupNewUserRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartySignupNewUserRequest ::
  IdentitytoolkitRelyingpartySignupNewUserRequest
newIdentitytoolkitRelyingpartySignupNewUserRequest =
  IdentitytoolkitRelyingpartySignupNewUserRequest
    { captchaChallenge = Core.Nothing,
      captchaResponse = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      emailVerified = Core.Nothing,
      idToken = Core.Nothing,
      instanceId = Core.Nothing,
      localId = Core.Nothing,
      password = Core.Nothing,
      phoneNumber = Core.Nothing,
      photoUrl = Core.Nothing,
      tenantId = Core.Nothing,
      tenantProjectNumber = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartySignupNewUserRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartySignupNewUserRequest"
      ( \o ->
          IdentitytoolkitRelyingpartySignupNewUserRequest
            Core.<$> (o Core..:? "captchaChallenge")
              Core.<*> (o Core..:? "captchaResponse")
              Core.<*> (o Core..:? "disabled")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "email")
              Core.<*> (o Core..:? "emailVerified")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "localId")
              Core.<*> (o Core..:? "password")
              Core.<*> (o Core..:? "phoneNumber")
              Core.<*> (o Core..:? "photoUrl")
              Core.<*> (o Core..:? "tenantId")
              Core.<*> (o Core..:? "tenantProjectNumber")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartySignupNewUserRequest
  where
  toJSON
    IdentitytoolkitRelyingpartySignupNewUserRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("captchaChallenge" Core..=)
                Core.<$> captchaChallenge,
              ("captchaResponse" Core..=) Core.<$> captchaResponse,
              ("disabled" Core..=) Core.<$> disabled,
              ("displayName" Core..=) Core.<$> displayName,
              ("email" Core..=) Core.<$> email,
              ("emailVerified" Core..=) Core.<$> emailVerified,
              ("idToken" Core..=) Core.<$> idToken,
              ("instanceId" Core..=) Core.<$> instanceId,
              ("localId" Core..=) Core.<$> localId,
              ("password" Core..=) Core.<$> password,
              ("phoneNumber" Core..=) Core.<$> phoneNumber,
              ("photoUrl" Core..=) Core.<$> photoUrl,
              ("tenantId" Core..=) Core.<$> tenantId,
              ("tenantProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> tenantProjectNumber
            ]
        )

-- | Request to upload user account in batch.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyUploadAccountRequest' smart constructor.
data IdentitytoolkitRelyingpartyUploadAccountRequest = IdentitytoolkitRelyingpartyUploadAccountRequest
  { -- | Whether allow overwrite existing account when user local_id exists.
    allowOverwrite :: (Core.Maybe Core.Bool),
    -- |
    blockSize :: (Core.Maybe Core.Int32),
    -- | The following 4 fields are for standard scrypt algorithm.
    cpuMemCost :: (Core.Maybe Core.Int32),
    -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- |
    dkLen :: (Core.Maybe Core.Int32),
    -- | The password hash algorithm.
    hashAlgorithm :: (Core.Maybe Core.Text),
    -- | Memory cost for hash calculation. Used by scrypt similar algorithms.
    memoryCost :: (Core.Maybe Core.Int32),
    -- |
    parallelization :: (Core.Maybe Core.Int32),
    -- | Rounds for hash calculation. Used by scrypt and similar algorithms.
    rounds :: (Core.Maybe Core.Int32),
    -- | The salt separator.
    saltSeparator :: (Core.Maybe Core.Base64),
    -- | If true, backend will do sanity check(including duplicate email and federated id) when uploading account.
    sanityCheck :: (Core.Maybe Core.Bool),
    -- | The key for to hash the password.
    signerKey :: (Core.Maybe Core.Base64),
    -- | Specify which project (field value is actually project id) to operate. Only used when provided credential.
    targetProjectId :: (Core.Maybe Core.Text),
    -- | The account info to be stored.
    users :: (Core.Maybe [UserInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyUploadAccountRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyUploadAccountRequest ::
  IdentitytoolkitRelyingpartyUploadAccountRequest
newIdentitytoolkitRelyingpartyUploadAccountRequest =
  IdentitytoolkitRelyingpartyUploadAccountRequest
    { allowOverwrite = Core.Nothing,
      blockSize = Core.Nothing,
      cpuMemCost = Core.Nothing,
      delegatedProjectNumber = Core.Nothing,
      dkLen = Core.Nothing,
      hashAlgorithm = Core.Nothing,
      memoryCost = Core.Nothing,
      parallelization = Core.Nothing,
      rounds = Core.Nothing,
      saltSeparator = Core.Nothing,
      sanityCheck = Core.Nothing,
      signerKey = Core.Nothing,
      targetProjectId = Core.Nothing,
      users = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyUploadAccountRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyUploadAccountRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyUploadAccountRequest
            Core.<$> (o Core..:? "allowOverwrite")
              Core.<*> (o Core..:? "blockSize")
              Core.<*> (o Core..:? "cpuMemCost")
              Core.<*> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "dkLen")
              Core.<*> (o Core..:? "hashAlgorithm")
              Core.<*> (o Core..:? "memoryCost")
              Core.<*> (o Core..:? "parallelization")
              Core.<*> (o Core..:? "rounds")
              Core.<*> (o Core..:? "saltSeparator")
              Core.<*> (o Core..:? "sanityCheck")
              Core.<*> (o Core..:? "signerKey")
              Core.<*> (o Core..:? "targetProjectId")
              Core.<*> (o Core..:? "users" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyUploadAccountRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyUploadAccountRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("allowOverwrite" Core..=) Core.<$> allowOverwrite,
              ("blockSize" Core..=) Core.<$> blockSize,
              ("cpuMemCost" Core..=) Core.<$> cpuMemCost,
              ("delegatedProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("dkLen" Core..=) Core.<$> dkLen,
              ("hashAlgorithm" Core..=) Core.<$> hashAlgorithm,
              ("memoryCost" Core..=) Core.<$> memoryCost,
              ("parallelization" Core..=) Core.<$> parallelization,
              ("rounds" Core..=) Core.<$> rounds,
              ("saltSeparator" Core..=) Core.<$> saltSeparator,
              ("sanityCheck" Core..=) Core.<$> sanityCheck,
              ("signerKey" Core..=) Core.<$> signerKey,
              ("targetProjectId" Core..=) Core.<$> targetProjectId,
              ("users" Core..=) Core.<$> users
            ]
        )

-- | Request to verify the IDP assertion.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyVerifyAssertionRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyAssertionRequest = IdentitytoolkitRelyingpartyVerifyAssertionRequest
  { -- | When it\'s true, automatically creates a new account if the user doesn\'t exist. When it\'s false, allows existing user to sign in normally and throws exception if the user doesn\'t exist.
    autoCreate :: (Core.Maybe Core.Bool),
    -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The GITKit token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | The GITKit token for the non-trusted IDP pending to be confirmed by the user.
    pendingIdToken :: (Core.Maybe Core.Text),
    -- | The post body if the request is a HTTP POST.
    postBody :: (Core.Maybe Core.Text),
    -- | The URI to which the IDP redirects the user back. It may contain federated login result params added by the IDP.
    requestUri :: (Core.Maybe Core.Text),
    -- | Whether return 200 and IDP credential rather than throw exception when federated id is already linked.
    returnIdpCredential :: (Core.Maybe Core.Bool),
    -- | Whether to return refresh tokens.
    returnRefreshToken :: (Core.Maybe Core.Bool),
    -- | Whether return sts id token and refresh token instead of gitkit token.
    returnSecureToken :: (Core.Maybe Core.Bool),
    -- | Session ID, which should match the one in previous createAuthUri request.
    sessionId :: (Core.Maybe Core.Text),
    -- | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.
    tenantId :: (Core.Maybe Core.Text),
    -- | Tenant project number to be used for idp discovery.
    tenantProjectNumber :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyAssertionRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyVerifyAssertionRequest ::
  IdentitytoolkitRelyingpartyVerifyAssertionRequest
newIdentitytoolkitRelyingpartyVerifyAssertionRequest =
  IdentitytoolkitRelyingpartyVerifyAssertionRequest
    { autoCreate = Core.Nothing,
      delegatedProjectNumber = Core.Nothing,
      idToken = Core.Nothing,
      instanceId = Core.Nothing,
      pendingIdToken = Core.Nothing,
      postBody = Core.Nothing,
      requestUri = Core.Nothing,
      returnIdpCredential = Core.Nothing,
      returnRefreshToken = Core.Nothing,
      returnSecureToken = Core.Nothing,
      sessionId = Core.Nothing,
      tenantId = Core.Nothing,
      tenantProjectNumber = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyVerifyAssertionRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyVerifyAssertionRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyVerifyAssertionRequest
            Core.<$> (o Core..:? "autoCreate")
              Core.<*> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "pendingIdToken")
              Core.<*> (o Core..:? "postBody")
              Core.<*> (o Core..:? "requestUri")
              Core.<*> (o Core..:? "returnIdpCredential")
              Core.<*> (o Core..:? "returnRefreshToken")
              Core.<*> (o Core..:? "returnSecureToken")
              Core.<*> (o Core..:? "sessionId")
              Core.<*> (o Core..:? "tenantId")
              Core.<*> (o Core..:? "tenantProjectNumber")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyVerifyAssertionRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyVerifyAssertionRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("autoCreate" Core..=) Core.<$> autoCreate,
              ("delegatedProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("idToken" Core..=) Core.<$> idToken,
              ("instanceId" Core..=) Core.<$> instanceId,
              ("pendingIdToken" Core..=) Core.<$> pendingIdToken,
              ("postBody" Core..=) Core.<$> postBody,
              ("requestUri" Core..=) Core.<$> requestUri,
              ("returnIdpCredential" Core..=)
                Core.<$> returnIdpCredential,
              ("returnRefreshToken" Core..=)
                Core.<$> returnRefreshToken,
              ("returnSecureToken" Core..=)
                Core.<$> returnSecureToken,
              ("sessionId" Core..=) Core.<$> sessionId,
              ("tenantId" Core..=) Core.<$> tenantId,
              ("tenantProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> tenantProjectNumber
            ]
        )

-- | Request to verify a custom token
--
-- /See:/ 'newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyCustomTokenRequest = IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
  { -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | Whether return sts id token and refresh token instead of gitkit token.
    returnSecureToken :: (Core.Maybe Core.Bool),
    -- | The custom token to verify
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyCustomTokenRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest ::
  IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest =
  IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    { delegatedProjectNumber = Core.Nothing,
      instanceId = Core.Nothing,
      returnSecureToken = Core.Nothing,
      token = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyVerifyCustomTokenRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
            Core.<$> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "returnSecureToken")
              Core.<*> (o Core..:? "token")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("delegatedProjectNumber" Core..=)
                Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("instanceId" Core..=) Core.<$> instanceId,
              ("returnSecureToken" Core..=)
                Core.<$> returnSecureToken,
              ("token" Core..=) Core.<$> token
            ]
        )

-- | Request to verify the password.
--
-- /See:/ 'newIdentitytoolkitRelyingpartyVerifyPasswordRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyPasswordRequest = IdentitytoolkitRelyingpartyVerifyPasswordRequest
  { -- | The captcha challenge.
    captchaChallenge :: (Core.Maybe Core.Text),
    -- | Response to the captcha.
    captchaResponse :: (Core.Maybe Core.Text),
    -- | GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
    delegatedProjectNumber :: (Core.Maybe Core.Int64),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | The GITKit token of the authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | Instance id token of the app.
    instanceId :: (Core.Maybe Core.Text),
    -- | The password inputed by the user.
    password :: (Core.Maybe Core.Text),
    -- | The GITKit token for the non-trusted IDP, which is to be confirmed by the user.
    pendingIdToken :: (Core.Maybe Core.Text),
    -- | Whether return sts id token and refresh token instead of gitkit token.
    returnSecureToken :: (Core.Maybe Core.Bool),
    -- | For multi-tenant use cases, in order to construct sign-in URL with the correct IDP parameters, Firebear needs to know which Tenant to retrieve IDP configs from.
    tenantId :: (Core.Maybe Core.Text),
    -- | Tenant project number to be used for idp discovery.
    tenantProjectNumber :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyPasswordRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyVerifyPasswordRequest ::
  IdentitytoolkitRelyingpartyVerifyPasswordRequest
newIdentitytoolkitRelyingpartyVerifyPasswordRequest =
  IdentitytoolkitRelyingpartyVerifyPasswordRequest
    { captchaChallenge = Core.Nothing,
      captchaResponse = Core.Nothing,
      delegatedProjectNumber = Core.Nothing,
      email = Core.Nothing,
      idToken = Core.Nothing,
      instanceId = Core.Nothing,
      password = Core.Nothing,
      pendingIdToken = Core.Nothing,
      returnSecureToken = Core.Nothing,
      tenantId = Core.Nothing,
      tenantProjectNumber = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyVerifyPasswordRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyVerifyPasswordRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyVerifyPasswordRequest
            Core.<$> (o Core..:? "captchaChallenge")
              Core.<*> (o Core..:? "captchaResponse")
              Core.<*> (o Core..:? "delegatedProjectNumber")
              Core.<*> (o Core..:? "email")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "instanceId")
              Core.<*> (o Core..:? "password")
              Core.<*> (o Core..:? "pendingIdToken")
              Core.<*> (o Core..:? "returnSecureToken")
              Core.<*> (o Core..:? "tenantId")
              Core.<*> (o Core..:? "tenantProjectNumber")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyVerifyPasswordRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyVerifyPasswordRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("captchaChallenge" Core..=)
                Core.<$> captchaChallenge,
              ("captchaResponse" Core..=) Core.<$> captchaResponse,
              ("delegatedProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> delegatedProjectNumber,
              ("email" Core..=) Core.<$> email,
              ("idToken" Core..=) Core.<$> idToken,
              ("instanceId" Core..=) Core.<$> instanceId,
              ("password" Core..=) Core.<$> password,
              ("pendingIdToken" Core..=) Core.<$> pendingIdToken,
              ("returnSecureToken" Core..=)
                Core.<$> returnSecureToken,
              ("tenantId" Core..=) Core.<$> tenantId,
              ("tenantProjectNumber" Core..=) Core.. Core.AsText
                Core.<$> tenantProjectNumber
            ]
        )

-- | Request for Identitytoolkit-VerifyPhoneNumber
--
-- /See:/ 'newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest = IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
  { -- |
    code :: (Core.Maybe Core.Text),
    -- |
    idToken :: (Core.Maybe Core.Text),
    -- |
    operation :: (Core.Maybe Core.Text),
    -- |
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The session info previously returned by IdentityToolkit-SendVerificationCode.
    sessionInfo :: (Core.Maybe Core.Text),
    -- |
    temporaryProof :: (Core.Maybe Core.Text),
    -- |
    verificationProof :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest ::
  IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest =
  IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    { code = Core.Nothing,
      idToken = Core.Nothing,
      operation = Core.Nothing,
      phoneNumber = Core.Nothing,
      sessionInfo = Core.Nothing,
      temporaryProof = Core.Nothing,
      verificationProof = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest"
      ( \o ->
          IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
            Core.<$> (o Core..:? "code") Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "operation")
              Core.<*> (o Core..:? "phoneNumber")
              Core.<*> (o Core..:? "sessionInfo")
              Core.<*> (o Core..:? "temporaryProof")
              Core.<*> (o Core..:? "verificationProof")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
  where
  toJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("code" Core..=) Core.<$> code,
              ("idToken" Core..=) Core.<$> idToken,
              ("operation" Core..=) Core.<$> operation,
              ("phoneNumber" Core..=) Core.<$> phoneNumber,
              ("sessionInfo" Core..=) Core.<$> sessionInfo,
              ("temporaryProof" Core..=) Core.<$> temporaryProof,
              ("verificationProof" Core..=)
                Core.<$> verificationProof
            ]
        )

-- | Response for Identitytoolkit-VerifyPhoneNumber
--
-- /See:/ 'newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse' smart constructor.
data IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse = IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
  { -- |
    expiresIn :: (Core.Maybe Core.Int64),
    -- |
    idToken :: (Core.Maybe Core.Text),
    -- |
    isNewUser :: (Core.Maybe Core.Bool),
    -- |
    localId :: (Core.Maybe Core.Text),
    -- |
    phoneNumber :: (Core.Maybe Core.Text),
    -- |
    refreshToken :: (Core.Maybe Core.Text),
    -- |
    temporaryProof :: (Core.Maybe Core.Text),
    -- |
    temporaryProofExpiresIn :: (Core.Maybe Core.Int64),
    -- |
    verificationProof :: (Core.Maybe Core.Text),
    -- |
    verificationProofExpiresIn :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse' with the minimum fields required to make a request.
newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse ::
  IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse =
  IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    { expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      isNewUser = Core.Nothing,
      localId = Core.Nothing,
      phoneNumber = Core.Nothing,
      refreshToken = Core.Nothing,
      temporaryProof = Core.Nothing,
      temporaryProofExpiresIn = Core.Nothing,
      verificationProof = Core.Nothing,
      verificationProofExpiresIn = Core.Nothing
    }

instance
  Core.FromJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
  where
  parseJSON =
    Core.withObject
      "IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse"
      ( \o ->
          IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
            Core.<$> (o Core..:? "expiresIn")
              Core.<*> (o Core..:? "idToken")
              Core.<*> (o Core..:? "isNewUser")
              Core.<*> (o Core..:? "localId")
              Core.<*> (o Core..:? "phoneNumber")
              Core.<*> (o Core..:? "refreshToken")
              Core.<*> (o Core..:? "temporaryProof")
              Core.<*> (o Core..:? "temporaryProofExpiresIn")
              Core.<*> (o Core..:? "verificationProof")
              Core.<*> (o Core..:? "verificationProofExpiresIn")
      )

instance
  Core.ToJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
  where
  toJSON
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("expiresIn" Core..=) Core.. Core.AsText
                Core.<$> expiresIn,
              ("idToken" Core..=) Core.<$> idToken,
              ("isNewUser" Core..=) Core.<$> isNewUser,
              ("localId" Core..=) Core.<$> localId,
              ("phoneNumber" Core..=) Core.<$> phoneNumber,
              ("refreshToken" Core..=) Core.<$> refreshToken,
              ("temporaryProof" Core..=) Core.<$> temporaryProof,
              ("temporaryProofExpiresIn" Core..=)
                Core.. Core.AsText
                Core.<$> temporaryProofExpiresIn,
              ("verificationProof" Core..=)
                Core.<$> verificationProof,
              ("verificationProofExpiresIn" Core..=)
                Core.. Core.AsText
                Core.<$> verificationProofExpiresIn
            ]
        )

-- | Template for a single idp configuration.
--
-- /See:/ 'newIdpConfig' smart constructor.
data IdpConfig = IdpConfig
  { -- | OAuth2 client ID.
    clientId :: (Core.Maybe Core.Text),
    -- | Whether this IDP is enabled.
    enabled :: (Core.Maybe Core.Bool),
    -- | Percent of users who will be prompted\/redirected federated login for this IDP.
    experimentPercent :: (Core.Maybe Core.Int32),
    -- | OAuth2 provider.
    provider :: (Core.Maybe Core.Text),
    -- | OAuth2 client secret.
    secret :: (Core.Maybe Core.Text),
    -- | Whitelisted client IDs for audience check.
    whitelistedAudiences :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdpConfig' with the minimum fields required to make a request.
newIdpConfig ::
  IdpConfig
newIdpConfig =
  IdpConfig
    { clientId = Core.Nothing,
      enabled = Core.Nothing,
      experimentPercent = Core.Nothing,
      provider = Core.Nothing,
      secret = Core.Nothing,
      whitelistedAudiences = Core.Nothing
    }

instance Core.FromJSON IdpConfig where
  parseJSON =
    Core.withObject
      "IdpConfig"
      ( \o ->
          IdpConfig
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "experimentPercent")
            Core.<*> (o Core..:? "provider")
            Core.<*> (o Core..:? "secret")
            Core.<*> ( o Core..:? "whitelistedAudiences"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON IdpConfig where
  toJSON IdpConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("enabled" Core..=) Core.<$> enabled,
            ("experimentPercent" Core..=)
              Core.<$> experimentPercent,
            ("provider" Core..=) Core.<$> provider,
            ("secret" Core..=) Core.<$> secret,
            ("whitelistedAudiences" Core..=)
              Core.<$> whitelistedAudiences
          ]
      )

-- | Request of getting a code for user confirmation (reset password, change email etc.)
--
-- /See:/ 'newRelyingparty' smart constructor.
data Relyingparty = Relyingparty
  { -- | whether or not to install the android app on the device where the link is opened
    androidInstallApp :: (Core.Maybe Core.Bool),
    -- | minimum version of the app. if the version on the device is lower than this version then the user is taken to the play store to upgrade the app
    androidMinimumVersion :: (Core.Maybe Core.Text),
    -- | android package name of the android app to handle the action code
    androidPackageName :: (Core.Maybe Core.Text),
    -- | whether or not the app can handle the oob code without first going to web
    canHandleCodeInApp :: (Core.Maybe Core.Bool),
    -- | The recaptcha response from the user.
    captchaResp :: (Core.Maybe Core.Text),
    -- | The recaptcha challenge presented to the user.
    challenge :: (Core.Maybe Core.Text),
    -- | The url to continue to the Gitkit app
    continueUrl :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | iOS app store id to download the app if it\'s not already installed
    iOSAppStoreId :: (Core.Maybe Core.Text),
    -- | the iOS bundle id of iOS app to handle the action code
    iOSBundleId :: (Core.Maybe Core.Text),
    -- | The user\'s Gitkit login token for email change.
    idToken :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#relyingparty\".
    kind :: Core.Text,
    -- | The new email if the code is for email change.
    newEmail' :: (Core.Maybe Core.Text),
    -- | The request type.
    requestType :: (Core.Maybe Core.Text),
    -- | The IP address of the user.
    userIp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Relyingparty' with the minimum fields required to make a request.
newRelyingparty ::
  Relyingparty
newRelyingparty =
  Relyingparty
    { androidInstallApp = Core.Nothing,
      androidMinimumVersion = Core.Nothing,
      androidPackageName = Core.Nothing,
      canHandleCodeInApp = Core.Nothing,
      captchaResp = Core.Nothing,
      challenge = Core.Nothing,
      continueUrl = Core.Nothing,
      email = Core.Nothing,
      iOSAppStoreId = Core.Nothing,
      iOSBundleId = Core.Nothing,
      idToken = Core.Nothing,
      kind = "identitytoolkit#relyingparty",
      newEmail' = Core.Nothing,
      requestType = Core.Nothing,
      userIp = Core.Nothing
    }

instance Core.FromJSON Relyingparty where
  parseJSON =
    Core.withObject
      "Relyingparty"
      ( \o ->
          Relyingparty
            Core.<$> (o Core..:? "androidInstallApp")
            Core.<*> (o Core..:? "androidMinimumVersion")
            Core.<*> (o Core..:? "androidPackageName")
            Core.<*> (o Core..:? "canHandleCodeInApp")
            Core.<*> (o Core..:? "captchaResp")
            Core.<*> (o Core..:? "challenge")
            Core.<*> (o Core..:? "continueUrl")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "iOSAppStoreId")
            Core.<*> (o Core..:? "iOSBundleId")
            Core.<*> (o Core..:? "idToken")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#relyingparty"
                     )
            Core.<*> (o Core..:? "newEmail")
            Core.<*> (o Core..:? "requestType")
            Core.<*> (o Core..:? "userIp")
      )

instance Core.ToJSON Relyingparty where
  toJSON Relyingparty {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidInstallApp" Core..=)
              Core.<$> androidInstallApp,
            ("androidMinimumVersion" Core..=)
              Core.<$> androidMinimumVersion,
            ("androidPackageName" Core..=)
              Core.<$> androidPackageName,
            ("canHandleCodeInApp" Core..=)
              Core.<$> canHandleCodeInApp,
            ("captchaResp" Core..=) Core.<$> captchaResp,
            ("challenge" Core..=) Core.<$> challenge,
            ("continueUrl" Core..=) Core.<$> continueUrl,
            ("email" Core..=) Core.<$> email,
            ("iOSAppStoreId" Core..=) Core.<$> iOSAppStoreId,
            ("iOSBundleId" Core..=) Core.<$> iOSBundleId,
            ("idToken" Core..=) Core.<$> idToken,
            Core.Just ("kind" Core..= kind),
            ("newEmail" Core..=) Core.<$> newEmail',
            ("requestType" Core..=) Core.<$> requestType,
            ("userIp" Core..=) Core.<$> userIp
          ]
      )

-- | Response of resetting the password.
--
-- /See:/ 'newResetPasswordResponse' smart constructor.
data ResetPasswordResponse = ResetPasswordResponse
  { -- | The user\'s email. If the out-of-band code is for email recovery, the user\'s original email.
    email :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#ResetPasswordResponse\".
    kind :: Core.Text,
    -- | If the out-of-band code is for email recovery, the user\'s new email.
    newEmail' :: (Core.Maybe Core.Text),
    -- | The request type.
    requestType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResetPasswordResponse' with the minimum fields required to make a request.
newResetPasswordResponse ::
  ResetPasswordResponse
newResetPasswordResponse =
  ResetPasswordResponse
    { email = Core.Nothing,
      kind = "identitytoolkit#ResetPasswordResponse",
      newEmail' = Core.Nothing,
      requestType = Core.Nothing
    }

instance Core.FromJSON ResetPasswordResponse where
  parseJSON =
    Core.withObject
      "ResetPasswordResponse"
      ( \o ->
          ResetPasswordResponse
            Core.<$> (o Core..:? "email")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#ResetPasswordResponse"
                     )
            Core.<*> (o Core..:? "newEmail")
            Core.<*> (o Core..:? "requestType")
      )

instance Core.ToJSON ResetPasswordResponse where
  toJSON ResetPasswordResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            Core.Just ("kind" Core..= kind),
            ("newEmail" Core..=) Core.<$> newEmail',
            ("requestType" Core..=) Core.<$> requestType
          ]
      )

-- | Respone of setting the account information.
--
-- /See:/ 'newSetAccountInfoResponse' smart constructor.
data SetAccountInfoResponse = SetAccountInfoResponse
  { -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | If email has been verified.
    emailVerified :: (Core.Maybe Core.Bool),
    -- | If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The Gitkit id token to login the newly sign up user.
    idToken :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#SetAccountInfoResponse\".
    kind :: Core.Text,
    -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text),
    -- | The new email the user attempts to change to.
    newEmail' :: (Core.Maybe Core.Text),
    -- | The user\'s hashed password.
    passwordHash :: (Core.Maybe Core.Base64),
    -- | The photo url of the user.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The user\'s profiles at the associated IdPs.
    providerUserInfo :: (Core.Maybe [SetAccountInfoResponse_ProviderUserInfoItem]),
    -- | If idToken is STS id token, then this field will be refresh token.
    refreshToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetAccountInfoResponse' with the minimum fields required to make a request.
newSetAccountInfoResponse ::
  SetAccountInfoResponse
newSetAccountInfoResponse =
  SetAccountInfoResponse
    { displayName = Core.Nothing,
      email = Core.Nothing,
      emailVerified = Core.Nothing,
      expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      kind = "identitytoolkit#SetAccountInfoResponse",
      localId = Core.Nothing,
      newEmail' = Core.Nothing,
      passwordHash = Core.Nothing,
      photoUrl = Core.Nothing,
      providerUserInfo = Core.Nothing,
      refreshToken = Core.Nothing
    }

instance Core.FromJSON SetAccountInfoResponse where
  parseJSON =
    Core.withObject
      "SetAccountInfoResponse"
      ( \o ->
          SetAccountInfoResponse
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "emailVerified")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "idToken")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#SetAccountInfoResponse"
                     )
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "newEmail")
            Core.<*> (o Core..:? "passwordHash")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "providerUserInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "refreshToken")
      )

instance Core.ToJSON SetAccountInfoResponse where
  toJSON SetAccountInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("emailVerified" Core..=) Core.<$> emailVerified,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("idToken" Core..=) Core.<$> idToken,
            Core.Just ("kind" Core..= kind),
            ("localId" Core..=) Core.<$> localId,
            ("newEmail" Core..=) Core.<$> newEmail',
            ("passwordHash" Core..=) Core.<$> passwordHash,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("providerUserInfo" Core..=)
              Core.<$> providerUserInfo,
            ("refreshToken" Core..=) Core.<$> refreshToken
          ]
      )

--
-- /See:/ 'newSetAccountInfoResponse_ProviderUserInfoItem' smart constructor.
data SetAccountInfoResponse_ProviderUserInfoItem = SetAccountInfoResponse_ProviderUserInfoItem
  { -- | The user\'s display name at the IDP.
    displayName :: (Core.Maybe Core.Text),
    -- | User\'s identifier at IDP.
    federatedId :: (Core.Maybe Core.Text),
    -- | The user\'s photo url at the IDP.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The IdP ID. For whitelisted IdPs it\'s a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s the OP identifier.
    providerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetAccountInfoResponse_ProviderUserInfoItem' with the minimum fields required to make a request.
newSetAccountInfoResponse_ProviderUserInfoItem ::
  SetAccountInfoResponse_ProviderUserInfoItem
newSetAccountInfoResponse_ProviderUserInfoItem =
  SetAccountInfoResponse_ProviderUserInfoItem
    { displayName = Core.Nothing,
      federatedId = Core.Nothing,
      photoUrl = Core.Nothing,
      providerId = Core.Nothing
    }

instance
  Core.FromJSON
    SetAccountInfoResponse_ProviderUserInfoItem
  where
  parseJSON =
    Core.withObject
      "SetAccountInfoResponse_ProviderUserInfoItem"
      ( \o ->
          SetAccountInfoResponse_ProviderUserInfoItem
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "federatedId")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "providerId")
      )

instance
  Core.ToJSON
    SetAccountInfoResponse_ProviderUserInfoItem
  where
  toJSON
    SetAccountInfoResponse_ProviderUserInfoItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("displayName" Core..=) Core.<$> displayName,
              ("federatedId" Core..=) Core.<$> federatedId,
              ("photoUrl" Core..=) Core.<$> photoUrl,
              ("providerId" Core..=) Core.<$> providerId
            ]
        )

-- | Response of signing up new user, creating anonymous user or anonymous user reauth.
--
-- /See:/ 'newSignupNewUserResponse' smart constructor.
data SignupNewUserResponse = SignupNewUserResponse
  { -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The Gitkit id token to login the newly sign up user.
    idToken :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#SignupNewUserResponse\".
    kind :: Core.Text,
    -- | The RP local ID of the user.
    localId :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be refresh token.
    refreshToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignupNewUserResponse' with the minimum fields required to make a request.
newSignupNewUserResponse ::
  SignupNewUserResponse
newSignupNewUserResponse =
  SignupNewUserResponse
    { displayName = Core.Nothing,
      email = Core.Nothing,
      expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      kind = "identitytoolkit#SignupNewUserResponse",
      localId = Core.Nothing,
      refreshToken = Core.Nothing
    }

instance Core.FromJSON SignupNewUserResponse where
  parseJSON =
    Core.withObject
      "SignupNewUserResponse"
      ( \o ->
          SignupNewUserResponse
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "idToken")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#SignupNewUserResponse"
                     )
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "refreshToken")
      )

instance Core.ToJSON SignupNewUserResponse where
  toJSON SignupNewUserResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("idToken" Core..=) Core.<$> idToken,
            Core.Just ("kind" Core..= kind),
            ("localId" Core..=) Core.<$> localId,
            ("refreshToken" Core..=) Core.<$> refreshToken
          ]
      )

-- | Respone of uploading accounts in batch.
--
-- /See:/ 'newUploadAccountResponse' smart constructor.
data UploadAccountResponse = UploadAccountResponse
  { -- | The error encountered while processing the account info.
    error :: (Core.Maybe [UploadAccountResponse_ErrorItem]),
    -- | The fixed string \"identitytoolkit#UploadAccountResponse\".
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadAccountResponse' with the minimum fields required to make a request.
newUploadAccountResponse ::
  UploadAccountResponse
newUploadAccountResponse =
  UploadAccountResponse
    { error = Core.Nothing,
      kind = "identitytoolkit#UploadAccountResponse"
    }

instance Core.FromJSON UploadAccountResponse where
  parseJSON =
    Core.withObject
      "UploadAccountResponse"
      ( \o ->
          UploadAccountResponse
            Core.<$> (o Core..:? "error" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#UploadAccountResponse"
                     )
      )

instance Core.ToJSON UploadAccountResponse where
  toJSON UploadAccountResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newUploadAccountResponse_ErrorItem' smart constructor.
data UploadAccountResponse_ErrorItem = UploadAccountResponse_ErrorItem
  { -- | The index of the malformed account, starting from 0.
    index :: (Core.Maybe Core.Int32),
    -- | Detailed error message for the account info.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadAccountResponse_ErrorItem' with the minimum fields required to make a request.
newUploadAccountResponse_ErrorItem ::
  UploadAccountResponse_ErrorItem
newUploadAccountResponse_ErrorItem =
  UploadAccountResponse_ErrorItem {index = Core.Nothing, message = Core.Nothing}

instance
  Core.FromJSON
    UploadAccountResponse_ErrorItem
  where
  parseJSON =
    Core.withObject
      "UploadAccountResponse_ErrorItem"
      ( \o ->
          UploadAccountResponse_ErrorItem
            Core.<$> (o Core..:? "index") Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON UploadAccountResponse_ErrorItem where
  toJSON UploadAccountResponse_ErrorItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Template for an individual account info.
--
-- /See:/ 'newUserInfo' smart constructor.
data UserInfo = UserInfo
  { -- | User creation timestamp.
    createdAt :: (Core.Maybe Core.Int64),
    -- | The custom attributes to be set in the user\'s id token.
    customAttributes :: (Core.Maybe Core.Text),
    -- | Whether the user is authenticated by the developer.
    customAuth :: (Core.Maybe Core.Bool),
    -- | Whether the user is disabled.
    disabled :: (Core.Maybe Core.Bool),
    -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email of the user.
    email :: (Core.Maybe Core.Text),
    -- | Whether the email has been verified.
    emailVerified :: (Core.Maybe Core.Bool),
    -- | last login timestamp.
    lastLoginAt :: (Core.Maybe Core.Int64),
    -- | The local ID of the user.
    localId :: (Core.Maybe Core.Text),
    -- | The user\'s hashed password.
    passwordHash :: (Core.Maybe Core.Base64),
    -- | The timestamp when the password was last updated.
    passwordUpdatedAt :: (Core.Maybe Core.Double),
    -- | User\'s phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The URL of the user profile photo.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The IDP of the user.
    providerUserInfo :: (Core.Maybe [UserInfo_ProviderUserInfoItem]),
    -- | The user\'s plain text password.
    rawPassword :: (Core.Maybe Core.Text),
    -- | The user\'s password salt.
    salt :: (Core.Maybe Core.Base64),
    -- | User\'s screen name at Twitter or login name at Github.
    screenName :: (Core.Maybe Core.Text),
    -- | Timestamp in seconds for valid login token.
    validSince :: (Core.Maybe Core.Int64),
    -- | Version of the user\'s password.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
newUserInfo ::
  UserInfo
newUserInfo =
  UserInfo
    { createdAt = Core.Nothing,
      customAttributes = Core.Nothing,
      customAuth = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      emailVerified = Core.Nothing,
      lastLoginAt = Core.Nothing,
      localId = Core.Nothing,
      passwordHash = Core.Nothing,
      passwordUpdatedAt = Core.Nothing,
      phoneNumber = Core.Nothing,
      photoUrl = Core.Nothing,
      providerUserInfo = Core.Nothing,
      rawPassword = Core.Nothing,
      salt = Core.Nothing,
      screenName = Core.Nothing,
      validSince = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON UserInfo where
  parseJSON =
    Core.withObject
      "UserInfo"
      ( \o ->
          UserInfo
            Core.<$> (o Core..:? "createdAt")
            Core.<*> (o Core..:? "customAttributes")
            Core.<*> (o Core..:? "customAuth")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "emailVerified")
            Core.<*> (o Core..:? "lastLoginAt")
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "passwordHash")
            Core.<*> (o Core..:? "passwordUpdatedAt")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "providerUserInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rawPassword")
            Core.<*> (o Core..:? "salt")
            Core.<*> (o Core..:? "screenName")
            Core.<*> (o Core..:? "validSince")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON UserInfo where
  toJSON UserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("createdAt" Core..=) Core.. Core.AsText
              Core.<$> createdAt,
            ("customAttributes" Core..=)
              Core.<$> customAttributes,
            ("customAuth" Core..=) Core.<$> customAuth,
            ("disabled" Core..=) Core.<$> disabled,
            ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("emailVerified" Core..=) Core.<$> emailVerified,
            ("lastLoginAt" Core..=) Core.. Core.AsText
              Core.<$> lastLoginAt,
            ("localId" Core..=) Core.<$> localId,
            ("passwordHash" Core..=) Core.<$> passwordHash,
            ("passwordUpdatedAt" Core..=)
              Core.<$> passwordUpdatedAt,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("providerUserInfo" Core..=)
              Core.<$> providerUserInfo,
            ("rawPassword" Core..=) Core.<$> rawPassword,
            ("salt" Core..=) Core.<$> salt,
            ("screenName" Core..=) Core.<$> screenName,
            ("validSince" Core..=) Core.. Core.AsText
              Core.<$> validSince,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newUserInfo_ProviderUserInfoItem' smart constructor.
data UserInfo_ProviderUserInfoItem = UserInfo_ProviderUserInfoItem
  { -- | The user\'s display name at the IDP.
    displayName :: (Core.Maybe Core.Text),
    -- | User\'s email at IDP.
    email :: (Core.Maybe Core.Text),
    -- | User\'s identifier at IDP.
    federatedId :: (Core.Maybe Core.Text),
    -- | User\'s phone number.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The user\'s photo url at the IDP.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The IdP ID. For white listed IdPs it\'s a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s the OP identifier.
    providerId :: (Core.Maybe Core.Text),
    -- | User\'s raw identifier directly returned from IDP.
    rawId :: (Core.Maybe Core.Text),
    -- | User\'s screen name at Twitter or login name at Github.
    screenName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInfo_ProviderUserInfoItem' with the minimum fields required to make a request.
newUserInfo_ProviderUserInfoItem ::
  UserInfo_ProviderUserInfoItem
newUserInfo_ProviderUserInfoItem =
  UserInfo_ProviderUserInfoItem
    { displayName = Core.Nothing,
      email = Core.Nothing,
      federatedId = Core.Nothing,
      phoneNumber = Core.Nothing,
      photoUrl = Core.Nothing,
      providerId = Core.Nothing,
      rawId = Core.Nothing,
      screenName = Core.Nothing
    }

instance Core.FromJSON UserInfo_ProviderUserInfoItem where
  parseJSON =
    Core.withObject
      "UserInfo_ProviderUserInfoItem"
      ( \o ->
          UserInfo_ProviderUserInfoItem
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "federatedId")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "providerId")
            Core.<*> (o Core..:? "rawId")
            Core.<*> (o Core..:? "screenName")
      )

instance Core.ToJSON UserInfo_ProviderUserInfoItem where
  toJSON UserInfo_ProviderUserInfoItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("federatedId" Core..=) Core.<$> federatedId,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("providerId" Core..=) Core.<$> providerId,
            ("rawId" Core..=) Core.<$> rawId,
            ("screenName" Core..=) Core.<$> screenName
          ]
      )

-- | Response of verifying the IDP assertion.
--
-- /See:/ 'newVerifyAssertionResponse' smart constructor.
data VerifyAssertionResponse = VerifyAssertionResponse
  { -- | The action code.
    action :: (Core.Maybe Core.Text),
    -- | URL for OTA app installation.
    appInstallationUrl :: (Core.Maybe Core.Text),
    -- | The custom scheme used by mobile app.
    appScheme :: (Core.Maybe Core.Text),
    -- | The opaque value used by the client to maintain context info between the authentication request and the IDP callback.
    context :: (Core.Maybe Core.Text),
    -- | The birth date of the IdP account.
    dateOfBirth :: (Core.Maybe Core.Text),
    -- | The display name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email returned by the IdP. NOTE: The federated login user may not own the email.
    email :: (Core.Maybe Core.Text),
    -- | It\'s true if the email is recycled.
    emailRecycled :: (Core.Maybe Core.Bool),
    -- | The value is true if the IDP is also the email provider. It means the user owns the email.
    emailVerified :: (Core.Maybe Core.Bool),
    -- | Client error code.
    errorMessage :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The unique ID identifies the IdP account.
    federatedId :: (Core.Maybe Core.Text),
    -- | The first name of the user.
    firstName :: (Core.Maybe Core.Text),
    -- | The full name of the user.
    fullName :: (Core.Maybe Core.Text),
    -- | The ID token.
    idToken :: (Core.Maybe Core.Text),
    -- | It\'s the identifier param in the createAuthUri request if the identifier is an email. It can be used to check whether the user input email is different from the asserted email.
    inputEmail :: (Core.Maybe Core.Text),
    -- | True if it\'s a new user sign-in, false if it\'s a returning user.
    isNewUser :: (Core.Maybe Core.Bool),
    -- | The fixed string \"identitytoolkit#VerifyAssertionResponse\".
    kind :: Core.Text,
    -- | The language preference of the user.
    language :: (Core.Maybe Core.Text),
    -- | The last name of the user.
    lastName :: (Core.Maybe Core.Text),
    -- | The RP local ID if it\'s already been mapped to the IdP account identified by the federated ID.
    localId :: (Core.Maybe Core.Text),
    -- | Whether the assertion is from a non-trusted IDP and need account linking confirmation.
    needConfirmation :: (Core.Maybe Core.Bool),
    -- | Whether need client to supply email to complete the federated login flow.
    needEmail :: (Core.Maybe Core.Bool),
    -- | The nick name of the user.
    nickName :: (Core.Maybe Core.Text),
    -- | The OAuth2 access token.
    oauthAccessToken :: (Core.Maybe Core.Text),
    -- | The OAuth2 authorization code.
    oauthAuthorizationCode :: (Core.Maybe Core.Text),
    -- | The lifetime in seconds of the OAuth2 access token.
    oauthExpireIn :: (Core.Maybe Core.Int32),
    -- | The OIDC id token.
    oauthIdToken :: (Core.Maybe Core.Text),
    -- | The user approved request token for the OpenID OAuth extension.
    oauthRequestToken :: (Core.Maybe Core.Text),
    -- | The scope for the OpenID OAuth extension.
    oauthScope :: (Core.Maybe Core.Text),
    -- | The OAuth1 access token secret.
    oauthTokenSecret :: (Core.Maybe Core.Text),
    -- | The original email stored in the mapping storage. It\'s returned when the federated ID is associated to a different email.
    originalEmail :: (Core.Maybe Core.Text),
    -- | The URI of the public accessible profiel picture.
    photoUrl :: (Core.Maybe Core.Text),
    -- | The IdP ID. For white listed IdPs it\'s a short domain name e.g. google.com, aol.com, live.net and yahoo.com. If the \"providerId\" param is set to OpenID OP identifer other than the whilte listed IdPs the OP identifier is returned. If the \"identifier\" param is federated ID in the createAuthUri request. The domain part of the federated ID is returned.
    providerId :: (Core.Maybe Core.Text),
    -- | Raw IDP-returned user info.
    rawUserInfo :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be refresh token.
    refreshToken :: (Core.Maybe Core.Text),
    -- | The screen_name of a Twitter user or the login name at Github.
    screenName :: (Core.Maybe Core.Text),
    -- | The timezone of the user.
    timeZone :: (Core.Maybe Core.Text),
    -- | When action is \'map\', contains the idps which can be used for confirmation.
    verifiedProvider :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyAssertionResponse' with the minimum fields required to make a request.
newVerifyAssertionResponse ::
  VerifyAssertionResponse
newVerifyAssertionResponse =
  VerifyAssertionResponse
    { action = Core.Nothing,
      appInstallationUrl = Core.Nothing,
      appScheme = Core.Nothing,
      context = Core.Nothing,
      dateOfBirth = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      emailRecycled = Core.Nothing,
      emailVerified = Core.Nothing,
      errorMessage = Core.Nothing,
      expiresIn = Core.Nothing,
      federatedId = Core.Nothing,
      firstName = Core.Nothing,
      fullName = Core.Nothing,
      idToken = Core.Nothing,
      inputEmail = Core.Nothing,
      isNewUser = Core.Nothing,
      kind = "identitytoolkit#VerifyAssertionResponse",
      language = Core.Nothing,
      lastName = Core.Nothing,
      localId = Core.Nothing,
      needConfirmation = Core.Nothing,
      needEmail = Core.Nothing,
      nickName = Core.Nothing,
      oauthAccessToken = Core.Nothing,
      oauthAuthorizationCode = Core.Nothing,
      oauthExpireIn = Core.Nothing,
      oauthIdToken = Core.Nothing,
      oauthRequestToken = Core.Nothing,
      oauthScope = Core.Nothing,
      oauthTokenSecret = Core.Nothing,
      originalEmail = Core.Nothing,
      photoUrl = Core.Nothing,
      providerId = Core.Nothing,
      rawUserInfo = Core.Nothing,
      refreshToken = Core.Nothing,
      screenName = Core.Nothing,
      timeZone = Core.Nothing,
      verifiedProvider = Core.Nothing
    }

instance Core.FromJSON VerifyAssertionResponse where
  parseJSON =
    Core.withObject
      "VerifyAssertionResponse"
      ( \o ->
          VerifyAssertionResponse
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "appInstallationUrl")
            Core.<*> (o Core..:? "appScheme")
            Core.<*> (o Core..:? "context")
            Core.<*> (o Core..:? "dateOfBirth")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "emailRecycled")
            Core.<*> (o Core..:? "emailVerified")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "federatedId")
            Core.<*> (o Core..:? "firstName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "idToken")
            Core.<*> (o Core..:? "inputEmail")
            Core.<*> (o Core..:? "isNewUser")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#VerifyAssertionResponse"
                     )
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "lastName")
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "needConfirmation")
            Core.<*> (o Core..:? "needEmail")
            Core.<*> (o Core..:? "nickName")
            Core.<*> (o Core..:? "oauthAccessToken")
            Core.<*> (o Core..:? "oauthAuthorizationCode")
            Core.<*> (o Core..:? "oauthExpireIn")
            Core.<*> (o Core..:? "oauthIdToken")
            Core.<*> (o Core..:? "oauthRequestToken")
            Core.<*> (o Core..:? "oauthScope")
            Core.<*> (o Core..:? "oauthTokenSecret")
            Core.<*> (o Core..:? "originalEmail")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "providerId")
            Core.<*> (o Core..:? "rawUserInfo")
            Core.<*> (o Core..:? "refreshToken")
            Core.<*> (o Core..:? "screenName")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "verifiedProvider" Core..!= Core.mempty)
      )

instance Core.ToJSON VerifyAssertionResponse where
  toJSON VerifyAssertionResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("appInstallationUrl" Core..=)
              Core.<$> appInstallationUrl,
            ("appScheme" Core..=) Core.<$> appScheme,
            ("context" Core..=) Core.<$> context,
            ("dateOfBirth" Core..=) Core.<$> dateOfBirth,
            ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("emailRecycled" Core..=) Core.<$> emailRecycled,
            ("emailVerified" Core..=) Core.<$> emailVerified,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("federatedId" Core..=) Core.<$> federatedId,
            ("firstName" Core..=) Core.<$> firstName,
            ("fullName" Core..=) Core.<$> fullName,
            ("idToken" Core..=) Core.<$> idToken,
            ("inputEmail" Core..=) Core.<$> inputEmail,
            ("isNewUser" Core..=) Core.<$> isNewUser,
            Core.Just ("kind" Core..= kind),
            ("language" Core..=) Core.<$> language,
            ("lastName" Core..=) Core.<$> lastName,
            ("localId" Core..=) Core.<$> localId,
            ("needConfirmation" Core..=)
              Core.<$> needConfirmation,
            ("needEmail" Core..=) Core.<$> needEmail,
            ("nickName" Core..=) Core.<$> nickName,
            ("oauthAccessToken" Core..=)
              Core.<$> oauthAccessToken,
            ("oauthAuthorizationCode" Core..=)
              Core.<$> oauthAuthorizationCode,
            ("oauthExpireIn" Core..=) Core.<$> oauthExpireIn,
            ("oauthIdToken" Core..=) Core.<$> oauthIdToken,
            ("oauthRequestToken" Core..=)
              Core.<$> oauthRequestToken,
            ("oauthScope" Core..=) Core.<$> oauthScope,
            ("oauthTokenSecret" Core..=)
              Core.<$> oauthTokenSecret,
            ("originalEmail" Core..=) Core.<$> originalEmail,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("providerId" Core..=) Core.<$> providerId,
            ("rawUserInfo" Core..=) Core.<$> rawUserInfo,
            ("refreshToken" Core..=) Core.<$> refreshToken,
            ("screenName" Core..=) Core.<$> screenName,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("verifiedProvider" Core..=)
              Core.<$> verifiedProvider
          ]
      )

-- | Response from verifying a custom token
--
-- /See:/ 'newVerifyCustomTokenResponse' smart constructor.
data VerifyCustomTokenResponse = VerifyCustomTokenResponse
  { -- | If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The GITKit token for authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | True if it\'s a new user sign-in, false if it\'s a returning user.
    isNewUser :: (Core.Maybe Core.Bool),
    -- | The fixed string \"identitytoolkit#VerifyCustomTokenResponse\".
    kind :: Core.Text,
    -- | If idToken is STS id token, then this field will be refresh token.
    refreshToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyCustomTokenResponse' with the minimum fields required to make a request.
newVerifyCustomTokenResponse ::
  VerifyCustomTokenResponse
newVerifyCustomTokenResponse =
  VerifyCustomTokenResponse
    { expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      isNewUser = Core.Nothing,
      kind = "identitytoolkit#VerifyCustomTokenResponse",
      refreshToken = Core.Nothing
    }

instance Core.FromJSON VerifyCustomTokenResponse where
  parseJSON =
    Core.withObject
      "VerifyCustomTokenResponse"
      ( \o ->
          VerifyCustomTokenResponse
            Core.<$> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "idToken")
            Core.<*> (o Core..:? "isNewUser")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#VerifyCustomTokenResponse"
                     )
            Core.<*> (o Core..:? "refreshToken")
      )

instance Core.ToJSON VerifyCustomTokenResponse where
  toJSON VerifyCustomTokenResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("idToken" Core..=) Core.<$> idToken,
            ("isNewUser" Core..=) Core.<$> isNewUser,
            Core.Just ("kind" Core..= kind),
            ("refreshToken" Core..=) Core.<$> refreshToken
          ]
      )

-- | Request of verifying the password.
--
-- /See:/ 'newVerifyPasswordResponse' smart constructor.
data VerifyPasswordResponse = VerifyPasswordResponse
  { -- | The name of the user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email returned by the IdP. NOTE: The federated login user may not own the email.
    email :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be expiration time of STS id token in seconds.
    expiresIn :: (Core.Maybe Core.Int64),
    -- | The GITKit token for authenticated user.
    idToken :: (Core.Maybe Core.Text),
    -- | The fixed string \"identitytoolkit#VerifyPasswordResponse\".
    kind :: Core.Text,
    -- | The RP local ID if it\'s already been mapped to the IdP account identified by the federated ID.
    localId :: (Core.Maybe Core.Text),
    -- | The OAuth2 access token.
    oauthAccessToken :: (Core.Maybe Core.Text),
    -- | The OAuth2 authorization code.
    oauthAuthorizationCode :: (Core.Maybe Core.Text),
    -- | The lifetime in seconds of the OAuth2 access token.
    oauthExpireIn :: (Core.Maybe Core.Int32),
    -- | The URI of the user\'s photo at IdP
    photoUrl :: (Core.Maybe Core.Text),
    -- | If idToken is STS id token, then this field will be refresh token.
    refreshToken :: (Core.Maybe Core.Text),
    -- | Whether the email is registered.
    registered :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerifyPasswordResponse' with the minimum fields required to make a request.
newVerifyPasswordResponse ::
  VerifyPasswordResponse
newVerifyPasswordResponse =
  VerifyPasswordResponse
    { displayName = Core.Nothing,
      email = Core.Nothing,
      expiresIn = Core.Nothing,
      idToken = Core.Nothing,
      kind = "identitytoolkit#VerifyPasswordResponse",
      localId = Core.Nothing,
      oauthAccessToken = Core.Nothing,
      oauthAuthorizationCode = Core.Nothing,
      oauthExpireIn = Core.Nothing,
      photoUrl = Core.Nothing,
      refreshToken = Core.Nothing,
      registered = Core.Nothing
    }

instance Core.FromJSON VerifyPasswordResponse where
  parseJSON =
    Core.withObject
      "VerifyPasswordResponse"
      ( \o ->
          VerifyPasswordResponse
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "expiresIn")
            Core.<*> (o Core..:? "idToken")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "identitytoolkit#VerifyPasswordResponse"
                     )
            Core.<*> (o Core..:? "localId")
            Core.<*> (o Core..:? "oauthAccessToken")
            Core.<*> (o Core..:? "oauthAuthorizationCode")
            Core.<*> (o Core..:? "oauthExpireIn")
            Core.<*> (o Core..:? "photoUrl")
            Core.<*> (o Core..:? "refreshToken")
            Core.<*> (o Core..:? "registered")
      )

instance Core.ToJSON VerifyPasswordResponse where
  toJSON VerifyPasswordResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("expiresIn" Core..=) Core.. Core.AsText
              Core.<$> expiresIn,
            ("idToken" Core..=) Core.<$> idToken,
            Core.Just ("kind" Core..= kind),
            ("localId" Core..=) Core.<$> localId,
            ("oauthAccessToken" Core..=)
              Core.<$> oauthAccessToken,
            ("oauthAuthorizationCode" Core..=)
              Core.<$> oauthAuthorizationCode,
            ("oauthExpireIn" Core..=) Core.<$> oauthExpireIn,
            ("photoUrl" Core..=) Core.<$> photoUrl,
            ("refreshToken" Core..=) Core.<$> refreshToken,
            ("registered" Core..=) Core.<$> registered
          ]
      )
