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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an approval request. Returns NOT_FOUND if the request does not
-- exist.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.approvalRequests.get@.
module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Get
    (
    -- * REST Resource
      OrganizationsApprovalRequestsGetResource

    -- * Creating a Request
    , organizationsApprovalRequestsGet
    , OrganizationsApprovalRequestsGet

    -- * Request Lenses
    , oargXgafv
    , oargUploadProtocol
    , oargAccessToken
    , oargUploadType
    , oargName
    , oargCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.approvalRequests.get@ method which the
-- 'OrganizationsApprovalRequestsGet' request conforms to.
type OrganizationsApprovalRequestsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ApprovalRequest

-- | Gets an approval request. Returns NOT_FOUND if the request does not
-- exist.
--
-- /See:/ 'organizationsApprovalRequestsGet' smart constructor.
data OrganizationsApprovalRequestsGet =
  OrganizationsApprovalRequestsGet'
    { _oargXgafv :: !(Maybe Xgafv)
    , _oargUploadProtocol :: !(Maybe Text)
    , _oargAccessToken :: !(Maybe Text)
    , _oargUploadType :: !(Maybe Text)
    , _oargName :: !Text
    , _oargCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsApprovalRequestsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oargXgafv'
--
-- * 'oargUploadProtocol'
--
-- * 'oargAccessToken'
--
-- * 'oargUploadType'
--
-- * 'oargName'
--
-- * 'oargCallback'
organizationsApprovalRequestsGet
    :: Text -- ^ 'oargName'
    -> OrganizationsApprovalRequestsGet
organizationsApprovalRequestsGet pOargName_ =
  OrganizationsApprovalRequestsGet'
    { _oargXgafv = Nothing
    , _oargUploadProtocol = Nothing
    , _oargAccessToken = Nothing
    , _oargUploadType = Nothing
    , _oargName = pOargName_
    , _oargCallback = Nothing
    }


-- | V1 error format.
oargXgafv :: Lens' OrganizationsApprovalRequestsGet (Maybe Xgafv)
oargXgafv
  = lens _oargXgafv (\ s a -> s{_oargXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oargUploadProtocol :: Lens' OrganizationsApprovalRequestsGet (Maybe Text)
oargUploadProtocol
  = lens _oargUploadProtocol
      (\ s a -> s{_oargUploadProtocol = a})

-- | OAuth access token.
oargAccessToken :: Lens' OrganizationsApprovalRequestsGet (Maybe Text)
oargAccessToken
  = lens _oargAccessToken
      (\ s a -> s{_oargAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oargUploadType :: Lens' OrganizationsApprovalRequestsGet (Maybe Text)
oargUploadType
  = lens _oargUploadType
      (\ s a -> s{_oargUploadType = a})

-- | Name of the approval request to retrieve.
oargName :: Lens' OrganizationsApprovalRequestsGet Text
oargName = lens _oargName (\ s a -> s{_oargName = a})

-- | JSONP
oargCallback :: Lens' OrganizationsApprovalRequestsGet (Maybe Text)
oargCallback
  = lens _oargCallback (\ s a -> s{_oargCallback = a})

instance GoogleRequest
           OrganizationsApprovalRequestsGet
         where
        type Rs OrganizationsApprovalRequestsGet =
             ApprovalRequest
        type Scopes OrganizationsApprovalRequestsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsApprovalRequestsGet'{..}
          = go _oargName _oargXgafv _oargUploadProtocol
              _oargAccessToken
              _oargUploadType
              _oargCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsApprovalRequestsGetResource)
                      mempty
