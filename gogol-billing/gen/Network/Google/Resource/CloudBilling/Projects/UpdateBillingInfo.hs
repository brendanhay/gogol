{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets or updates the billing account associated with a project. You
-- specify the new billing account by setting the \`billing_account_name\`
-- in the \`ProjectBillingInfo\` resource to the resource name of a billing
-- account. Associating a project with an open billing account enables
-- billing on the project and allows charges for resource usage. If the
-- project already had a billing account, this method changes the billing
-- account used for resource usage charges. *Note:* Incurred charges that
-- have not yet been reported in the transaction history of the Google
-- Developers Console may be billed to the new billing account, even if the
-- charge occurred before the new billing account was assigned to the
-- project. The current authenticated user must have ownership privileges
-- for both the
-- [project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ) and the [billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947). You can
-- disable billing on the project by setting the \`billing_account_name\`
-- field to empty. This action disassociates the current billing account
-- from the project. Any billable activity of your in-use services will
-- stop, and your application could stop functioning as expected. Any
-- unbilled charges to date will be billed to the previously associated
-- account. The current authenticated user must be either an owner of the
-- project or an owner of the billing account for the project. Note that
-- associating a project with a *closed* billing account will have much the
-- same effect as disabling billing on the project: any paid resources used
-- by the project will be shut down. Thus, unless you wish to disable
-- billing, you should always call this method with the name of an *open*
-- billing account.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudBillingProjectsUpdateBillingInfo@.
module Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo
    (
    -- * REST Resource
      ProjectsUpdateBillingInfoResource

    -- * Creating a Request
    , projectsUpdateBillingInfo'
    , ProjectsUpdateBillingInfo'

    -- * Request Lenses
    , pubiXgafv
    , pubiQuotaUser
    , pubiPrettyPrint
    , pubiUploadProtocol
    , pubiPp
    , pubiAccessToken
    , pubiUploadType
    , pubiPayload
    , pubiBearerToken
    , pubiKey
    , pubiName
    , pubiOAuthToken
    , pubiFields
    , pubiCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudBillingProjectsUpdateBillingInfo@ which the
-- 'ProjectsUpdateBillingInfo'' request conforms to.
type ProjectsUpdateBillingInfoResource =
     "v1" :>
       Capture "name" Text :>
         "billingInfo" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[OctetStream] ProjectBillingInfo
                                       :> Put '[JSON] ProjectBillingInfo

-- | Sets or updates the billing account associated with a project. You
-- specify the new billing account by setting the \`billing_account_name\`
-- in the \`ProjectBillingInfo\` resource to the resource name of a billing
-- account. Associating a project with an open billing account enables
-- billing on the project and allows charges for resource usage. If the
-- project already had a billing account, this method changes the billing
-- account used for resource usage charges. *Note:* Incurred charges that
-- have not yet been reported in the transaction history of the Google
-- Developers Console may be billed to the new billing account, even if the
-- charge occurred before the new billing account was assigned to the
-- project. The current authenticated user must have ownership privileges
-- for both the
-- [project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ) and the [billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947). You can
-- disable billing on the project by setting the \`billing_account_name\`
-- field to empty. This action disassociates the current billing account
-- from the project. Any billable activity of your in-use services will
-- stop, and your application could stop functioning as expected. Any
-- unbilled charges to date will be billed to the previously associated
-- account. The current authenticated user must be either an owner of the
-- project or an owner of the billing account for the project. Note that
-- associating a project with a *closed* billing account will have much the
-- same effect as disabling billing on the project: any paid resources used
-- by the project will be shut down. Thus, unless you wish to disable
-- billing, you should always call this method with the name of an *open*
-- billing account.
--
-- /See:/ 'projectsUpdateBillingInfo'' smart constructor.
data ProjectsUpdateBillingInfo' = ProjectsUpdateBillingInfo'
    { _pubiXgafv          :: !(Maybe Text)
    , _pubiQuotaUser      :: !(Maybe Text)
    , _pubiPrettyPrint    :: !Bool
    , _pubiUploadProtocol :: !(Maybe Text)
    , _pubiPp             :: !Bool
    , _pubiAccessToken    :: !(Maybe Text)
    , _pubiUploadType     :: !(Maybe Text)
    , _pubiPayload        :: !ProjectBillingInfo
    , _pubiBearerToken    :: !(Maybe Text)
    , _pubiKey            :: !(Maybe Key)
    , _pubiName           :: !Text
    , _pubiOAuthToken     :: !(Maybe OAuthToken)
    , _pubiFields         :: !(Maybe Text)
    , _pubiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUpdateBillingInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pubiXgafv'
--
-- * 'pubiQuotaUser'
--
-- * 'pubiPrettyPrint'
--
-- * 'pubiUploadProtocol'
--
-- * 'pubiPp'
--
-- * 'pubiAccessToken'
--
-- * 'pubiUploadType'
--
-- * 'pubiPayload'
--
-- * 'pubiBearerToken'
--
-- * 'pubiKey'
--
-- * 'pubiName'
--
-- * 'pubiOAuthToken'
--
-- * 'pubiFields'
--
-- * 'pubiCallback'
projectsUpdateBillingInfo'
    :: ProjectBillingInfo -- ^ 'payload'
    -> Text -- ^ 'name'
    -> ProjectsUpdateBillingInfo'
projectsUpdateBillingInfo' pPubiPayload_ pPubiName_ =
    ProjectsUpdateBillingInfo'
    { _pubiXgafv = Nothing
    , _pubiQuotaUser = Nothing
    , _pubiPrettyPrint = True
    , _pubiUploadProtocol = Nothing
    , _pubiPp = True
    , _pubiAccessToken = Nothing
    , _pubiUploadType = Nothing
    , _pubiPayload = pPubiPayload_
    , _pubiBearerToken = Nothing
    , _pubiKey = Nothing
    , _pubiName = pPubiName_
    , _pubiOAuthToken = Nothing
    , _pubiFields = Nothing
    , _pubiCallback = Nothing
    }

-- | V1 error format.
pubiXgafv :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiXgafv
  = lens _pubiXgafv (\ s a -> s{_pubiXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pubiQuotaUser :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiQuotaUser
  = lens _pubiQuotaUser
      (\ s a -> s{_pubiQuotaUser = a})

-- | Returns response with indentations and line breaks.
pubiPrettyPrint :: Lens' ProjectsUpdateBillingInfo' Bool
pubiPrettyPrint
  = lens _pubiPrettyPrint
      (\ s a -> s{_pubiPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pubiUploadProtocol :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiUploadProtocol
  = lens _pubiUploadProtocol
      (\ s a -> s{_pubiUploadProtocol = a})

-- | Pretty-print response.
pubiPp :: Lens' ProjectsUpdateBillingInfo' Bool
pubiPp = lens _pubiPp (\ s a -> s{_pubiPp = a})

-- | OAuth access token.
pubiAccessToken :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiAccessToken
  = lens _pubiAccessToken
      (\ s a -> s{_pubiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pubiUploadType :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiUploadType
  = lens _pubiUploadType
      (\ s a -> s{_pubiUploadType = a})

-- | Multipart request metadata.
pubiPayload :: Lens' ProjectsUpdateBillingInfo' ProjectBillingInfo
pubiPayload
  = lens _pubiPayload (\ s a -> s{_pubiPayload = a})

-- | OAuth bearer token.
pubiBearerToken :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiBearerToken
  = lens _pubiBearerToken
      (\ s a -> s{_pubiBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pubiKey :: Lens' ProjectsUpdateBillingInfo' (Maybe Key)
pubiKey = lens _pubiKey (\ s a -> s{_pubiKey = a})

-- | The resource name of the project associated with the billing information
-- that you want to update. For example, \`projects\/tokyo-rain-123\`.
pubiName :: Lens' ProjectsUpdateBillingInfo' Text
pubiName = lens _pubiName (\ s a -> s{_pubiName = a})

-- | OAuth 2.0 token for the current user.
pubiOAuthToken :: Lens' ProjectsUpdateBillingInfo' (Maybe OAuthToken)
pubiOAuthToken
  = lens _pubiOAuthToken
      (\ s a -> s{_pubiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pubiFields :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiFields
  = lens _pubiFields (\ s a -> s{_pubiFields = a})

-- | JSONP
pubiCallback :: Lens' ProjectsUpdateBillingInfo' (Maybe Text)
pubiCallback
  = lens _pubiCallback (\ s a -> s{_pubiCallback = a})

instance GoogleAuth ProjectsUpdateBillingInfo' where
        authKey = pubiKey . _Just
        authToken = pubiOAuthToken . _Just

instance GoogleRequest ProjectsUpdateBillingInfo'
         where
        type Rs ProjectsUpdateBillingInfo' =
             ProjectBillingInfo
        request = requestWithRoute defReq billingURL
        requestWithRoute r u ProjectsUpdateBillingInfo'{..}
          = go _pubiName _pubiXgafv _pubiUploadProtocol
              (Just _pubiPp)
              _pubiAccessToken
              _pubiUploadType
              _pubiBearerToken
              _pubiCallback
              _pubiQuotaUser
              (Just _pubiPrettyPrint)
              _pubiFields
              _pubiKey
              _pubiOAuthToken
              (Just AltJSON)
              _pubiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsUpdateBillingInfoResource)
                      r
                      u
