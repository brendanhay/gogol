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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Policies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists policies for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.list@.
module Network.Google.Resource.AndroidManagement.Enterprises.Policies.List
    (
    -- * REST Resource
      EnterprisesPoliciesListResource

    -- * Creating a Request
    , enterprisesPoliciesList
    , EnterprisesPoliciesList

    -- * Request Lenses
    , eplParent
    , eplXgafv
    , eplUploadProtocol
    , eplAccessToken
    , eplUploadType
    , eplPageToken
    , eplPageSize
    , eplCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.policies.list@ method which the
-- 'EnterprisesPoliciesList' request conforms to.
type EnterprisesPoliciesListResource =
     "v1" :>
       Capture "parent" Text :>
         "policies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListPoliciesResponse

-- | Lists policies for a given enterprise.
--
-- /See:/ 'enterprisesPoliciesList' smart constructor.
data EnterprisesPoliciesList =
  EnterprisesPoliciesList'
    { _eplParent         :: !Text
    , _eplXgafv          :: !(Maybe Xgafv)
    , _eplUploadProtocol :: !(Maybe Text)
    , _eplAccessToken    :: !(Maybe Text)
    , _eplUploadType     :: !(Maybe Text)
    , _eplPageToken      :: !(Maybe Text)
    , _eplPageSize       :: !(Maybe (Textual Int32))
    , _eplCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eplParent'
--
-- * 'eplXgafv'
--
-- * 'eplUploadProtocol'
--
-- * 'eplAccessToken'
--
-- * 'eplUploadType'
--
-- * 'eplPageToken'
--
-- * 'eplPageSize'
--
-- * 'eplCallback'
enterprisesPoliciesList
    :: Text -- ^ 'eplParent'
    -> EnterprisesPoliciesList
enterprisesPoliciesList pEplParent_ =
  EnterprisesPoliciesList'
    { _eplParent = pEplParent_
    , _eplXgafv = Nothing
    , _eplUploadProtocol = Nothing
    , _eplAccessToken = Nothing
    , _eplUploadType = Nothing
    , _eplPageToken = Nothing
    , _eplPageSize = Nothing
    , _eplCallback = Nothing
    }

-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
eplParent :: Lens' EnterprisesPoliciesList Text
eplParent
  = lens _eplParent (\ s a -> s{_eplParent = a})

-- | V1 error format.
eplXgafv :: Lens' EnterprisesPoliciesList (Maybe Xgafv)
eplXgafv = lens _eplXgafv (\ s a -> s{_eplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eplUploadProtocol :: Lens' EnterprisesPoliciesList (Maybe Text)
eplUploadProtocol
  = lens _eplUploadProtocol
      (\ s a -> s{_eplUploadProtocol = a})

-- | OAuth access token.
eplAccessToken :: Lens' EnterprisesPoliciesList (Maybe Text)
eplAccessToken
  = lens _eplAccessToken
      (\ s a -> s{_eplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eplUploadType :: Lens' EnterprisesPoliciesList (Maybe Text)
eplUploadType
  = lens _eplUploadType
      (\ s a -> s{_eplUploadType = a})

-- | A token identifying a page of results returned by the server.
eplPageToken :: Lens' EnterprisesPoliciesList (Maybe Text)
eplPageToken
  = lens _eplPageToken (\ s a -> s{_eplPageToken = a})

-- | The requested page size. The actual page size may be fixed to a min or
-- max value.
eplPageSize :: Lens' EnterprisesPoliciesList (Maybe Int32)
eplPageSize
  = lens _eplPageSize (\ s a -> s{_eplPageSize = a}) .
      mapping _Coerce

-- | JSONP
eplCallback :: Lens' EnterprisesPoliciesList (Maybe Text)
eplCallback
  = lens _eplCallback (\ s a -> s{_eplCallback = a})

instance GoogleRequest EnterprisesPoliciesList where
        type Rs EnterprisesPoliciesList =
             ListPoliciesResponse
        type Scopes EnterprisesPoliciesList =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesPoliciesList'{..}
          = go _eplParent _eplXgafv _eplUploadProtocol
              _eplAccessToken
              _eplUploadType
              _eplPageToken
              _eplPageSize
              _eplCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesPoliciesListResource)
                      mempty
