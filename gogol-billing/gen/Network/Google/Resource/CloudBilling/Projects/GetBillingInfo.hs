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
-- Module      : Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the billing information for a project. The current authenticated
-- user must have [permission to view the
-- project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @cloudbilling.projects.getBillingInfo@.
module Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
    (
    -- * REST Resource
      ProjectsGetBillingInfoResource

    -- * Creating a Request
    , projectsGetBillingInfo
    , ProjectsGetBillingInfo

    -- * Request Lenses
    , pgbiXgafv
    , pgbiUploadProtocol
    , pgbiPp
    , pgbiAccessToken
    , pgbiUploadType
    , pgbiBearerToken
    , pgbiName
    , pgbiCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.projects.getBillingInfo@ method which the
-- 'ProjectsGetBillingInfo' request conforms to.
type ProjectsGetBillingInfoResource =
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
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ProjectBillingInfo

-- | Gets the billing information for a project. The current authenticated
-- user must have [permission to view the
-- project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ).
--
-- /See:/ 'projectsGetBillingInfo' smart constructor.
data ProjectsGetBillingInfo = ProjectsGetBillingInfo
    { _pgbiXgafv          :: !(Maybe Text)
    , _pgbiUploadProtocol :: !(Maybe Text)
    , _pgbiPp             :: !Bool
    , _pgbiAccessToken    :: !(Maybe Text)
    , _pgbiUploadType     :: !(Maybe Text)
    , _pgbiBearerToken    :: !(Maybe Text)
    , _pgbiName           :: !Text
    , _pgbiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetBillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbiXgafv'
--
-- * 'pgbiUploadProtocol'
--
-- * 'pgbiPp'
--
-- * 'pgbiAccessToken'
--
-- * 'pgbiUploadType'
--
-- * 'pgbiBearerToken'
--
-- * 'pgbiName'
--
-- * 'pgbiCallback'
projectsGetBillingInfo
    :: Text -- ^ 'pgbiName'
    -> ProjectsGetBillingInfo
projectsGetBillingInfo pPgbiName_ =
    ProjectsGetBillingInfo
    { _pgbiXgafv = Nothing
    , _pgbiUploadProtocol = Nothing
    , _pgbiPp = True
    , _pgbiAccessToken = Nothing
    , _pgbiUploadType = Nothing
    , _pgbiBearerToken = Nothing
    , _pgbiName = pPgbiName_
    , _pgbiCallback = Nothing
    }

-- | V1 error format.
pgbiXgafv :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiXgafv
  = lens _pgbiXgafv (\ s a -> s{_pgbiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgbiUploadProtocol :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiUploadProtocol
  = lens _pgbiUploadProtocol
      (\ s a -> s{_pgbiUploadProtocol = a})

-- | Pretty-print response.
pgbiPp :: Lens' ProjectsGetBillingInfo Bool
pgbiPp = lens _pgbiPp (\ s a -> s{_pgbiPp = a})

-- | OAuth access token.
pgbiAccessToken :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiAccessToken
  = lens _pgbiAccessToken
      (\ s a -> s{_pgbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgbiUploadType :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiUploadType
  = lens _pgbiUploadType
      (\ s a -> s{_pgbiUploadType = a})

-- | OAuth bearer token.
pgbiBearerToken :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiBearerToken
  = lens _pgbiBearerToken
      (\ s a -> s{_pgbiBearerToken = a})

-- | The resource name of the project for which billing information is
-- retrieved. For example, \`projects\/tokyo-rain-123\`.
pgbiName :: Lens' ProjectsGetBillingInfo Text
pgbiName = lens _pgbiName (\ s a -> s{_pgbiName = a})

-- | JSONP
pgbiCallback :: Lens' ProjectsGetBillingInfo (Maybe Text)
pgbiCallback
  = lens _pgbiCallback (\ s a -> s{_pgbiCallback = a})

instance GoogleRequest ProjectsGetBillingInfo where
        type Rs ProjectsGetBillingInfo = ProjectBillingInfo
        type Scopes ProjectsGetBillingInfo =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetBillingInfo{..}
          = go _pgbiName _pgbiXgafv _pgbiUploadProtocol
              (Just _pgbiPp)
              _pgbiAccessToken
              _pgbiUploadType
              _pgbiBearerToken
              _pgbiCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetBillingInfoResource)
                      mempty
