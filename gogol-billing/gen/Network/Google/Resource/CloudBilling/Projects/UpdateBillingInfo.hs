{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets or updates the billing account associated with a project. You
-- specify the new billing account by setting the \`billing_account_name\`
-- in the \`ProjectBillingInfo\` resource to the resource name of a billing
-- account. Associating a project with an open billing account enables
-- billing on the project and allows charges for resource usage. If the
-- project already had a billing account, this method changes the billing
-- account used for resource usage charges. *Note:* Incurred charges that
-- have not yet been reported in the transaction history of the GCP Console
-- might be billed to the new billing account, even if the charge occurred
-- before the new billing account was assigned to the project. The current
-- authenticated user must have ownership privileges for both the
-- [project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ) and the [billing
-- account](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
-- You can disable billing on the project by setting the
-- \`billing_account_name\` field to empty. This action disassociates the
-- current billing account from the project. Any billable activity of your
-- in-use services will stop, and your application could stop functioning
-- as expected. Any unbilled charges to date will be billed to the
-- previously associated account. The current authenticated user must be
-- either an owner of the project or an owner of the billing account for
-- the project. Note that associating a project with a *closed* billing
-- account will have much the same effect as disabling billing on the
-- project: any paid resources used by the project will be shut down. Thus,
-- unless you wish to disable billing, you should always call this method
-- with the name of an *open* billing account.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.projects.updateBillingInfo@.
module Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo
    (
    -- * REST Resource
      ProjectsUpdateBillingInfoResource

    -- * Creating a Request
    , projectsUpdateBillingInfo
    , ProjectsUpdateBillingInfo

    -- * Request Lenses
    , pubiXgafv
    , pubiUploadProtocol
    , pubiAccessToken
    , pubiUploadType
    , pubiPayload
    , pubiName
    , pubiCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.projects.updateBillingInfo@ method which the
-- 'ProjectsUpdateBillingInfo' request conforms to.
type ProjectsUpdateBillingInfoResource =
     "v1" :>
       Capture "name" Text :>
         "billingInfo" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProjectBillingInfo :>
                         Put '[JSON] ProjectBillingInfo

-- | Sets or updates the billing account associated with a project. You
-- specify the new billing account by setting the \`billing_account_name\`
-- in the \`ProjectBillingInfo\` resource to the resource name of a billing
-- account. Associating a project with an open billing account enables
-- billing on the project and allows charges for resource usage. If the
-- project already had a billing account, this method changes the billing
-- account used for resource usage charges. *Note:* Incurred charges that
-- have not yet been reported in the transaction history of the GCP Console
-- might be billed to the new billing account, even if the charge occurred
-- before the new billing account was assigned to the project. The current
-- authenticated user must have ownership privileges for both the
-- [project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ) and the [billing
-- account](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
-- You can disable billing on the project by setting the
-- \`billing_account_name\` field to empty. This action disassociates the
-- current billing account from the project. Any billable activity of your
-- in-use services will stop, and your application could stop functioning
-- as expected. Any unbilled charges to date will be billed to the
-- previously associated account. The current authenticated user must be
-- either an owner of the project or an owner of the billing account for
-- the project. Note that associating a project with a *closed* billing
-- account will have much the same effect as disabling billing on the
-- project: any paid resources used by the project will be shut down. Thus,
-- unless you wish to disable billing, you should always call this method
-- with the name of an *open* billing account.
--
-- /See:/ 'projectsUpdateBillingInfo' smart constructor.
data ProjectsUpdateBillingInfo = ProjectsUpdateBillingInfo'
    { _pubiXgafv          :: !(Maybe Xgafv)
    , _pubiUploadProtocol :: !(Maybe Text)
    , _pubiAccessToken    :: !(Maybe Text)
    , _pubiUploadType     :: !(Maybe Text)
    , _pubiPayload        :: !ProjectBillingInfo
    , _pubiName           :: !Text
    , _pubiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUpdateBillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pubiXgafv'
--
-- * 'pubiUploadProtocol'
--
-- * 'pubiAccessToken'
--
-- * 'pubiUploadType'
--
-- * 'pubiPayload'
--
-- * 'pubiName'
--
-- * 'pubiCallback'
projectsUpdateBillingInfo
    :: ProjectBillingInfo -- ^ 'pubiPayload'
    -> Text -- ^ 'pubiName'
    -> ProjectsUpdateBillingInfo
projectsUpdateBillingInfo pPubiPayload_ pPubiName_ =
    ProjectsUpdateBillingInfo'
    { _pubiXgafv = Nothing
    , _pubiUploadProtocol = Nothing
    , _pubiAccessToken = Nothing
    , _pubiUploadType = Nothing
    , _pubiPayload = pPubiPayload_
    , _pubiName = pPubiName_
    , _pubiCallback = Nothing
    }

-- | V1 error format.
pubiXgafv :: Lens' ProjectsUpdateBillingInfo (Maybe Xgafv)
pubiXgafv
  = lens _pubiXgafv (\ s a -> s{_pubiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pubiUploadProtocol :: Lens' ProjectsUpdateBillingInfo (Maybe Text)
pubiUploadProtocol
  = lens _pubiUploadProtocol
      (\ s a -> s{_pubiUploadProtocol = a})

-- | OAuth access token.
pubiAccessToken :: Lens' ProjectsUpdateBillingInfo (Maybe Text)
pubiAccessToken
  = lens _pubiAccessToken
      (\ s a -> s{_pubiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pubiUploadType :: Lens' ProjectsUpdateBillingInfo (Maybe Text)
pubiUploadType
  = lens _pubiUploadType
      (\ s a -> s{_pubiUploadType = a})

-- | Multipart request metadata.
pubiPayload :: Lens' ProjectsUpdateBillingInfo ProjectBillingInfo
pubiPayload
  = lens _pubiPayload (\ s a -> s{_pubiPayload = a})

-- | The resource name of the project associated with the billing information
-- that you want to update. For example, \`projects\/tokyo-rain-123\`.
pubiName :: Lens' ProjectsUpdateBillingInfo Text
pubiName = lens _pubiName (\ s a -> s{_pubiName = a})

-- | JSONP
pubiCallback :: Lens' ProjectsUpdateBillingInfo (Maybe Text)
pubiCallback
  = lens _pubiCallback (\ s a -> s{_pubiCallback = a})

instance GoogleRequest ProjectsUpdateBillingInfo
         where
        type Rs ProjectsUpdateBillingInfo =
             ProjectBillingInfo
        type Scopes ProjectsUpdateBillingInfo =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsUpdateBillingInfo'{..}
          = go _pubiName _pubiXgafv _pubiUploadProtocol
              _pubiAccessToken
              _pubiUploadType
              _pubiCallback
              (Just AltJSON)
              _pubiPayload
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUpdateBillingInfoResource)
                      mempty
