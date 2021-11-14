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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists EMM-managed enterprises. Only BASIC fields are returned.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.list@.
module Network.Google.Resource.AndroidManagement.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListResource

    -- * Creating a Request
    , enterprisesList
    , EnterprisesList

    -- * Request Lenses
    , elXgafv
    , elUploadProtocol
    , elAccessToken
    , elUploadType
    , elView
    , elPageToken
    , elProjectId
    , elPageSize
    , elCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.list@ method which the
-- 'EnterprisesList' request conforms to.
type EnterprisesListResource =
     "v1" :>
       "enterprises" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view" EnterprisesListView :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListEnterprisesResponse

-- | Lists EMM-managed enterprises. Only BASIC fields are returned.
--
-- /See:/ 'enterprisesList' smart constructor.
data EnterprisesList =
  EnterprisesList'
    { _elXgafv :: !(Maybe Xgafv)
    , _elUploadProtocol :: !(Maybe Text)
    , _elAccessToken :: !(Maybe Text)
    , _elUploadType :: !(Maybe Text)
    , _elView :: !(Maybe EnterprisesListView)
    , _elPageToken :: !(Maybe Text)
    , _elProjectId :: !(Maybe Text)
    , _elPageSize :: !(Maybe (Textual Int32))
    , _elCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elXgafv'
--
-- * 'elUploadProtocol'
--
-- * 'elAccessToken'
--
-- * 'elUploadType'
--
-- * 'elView'
--
-- * 'elPageToken'
--
-- * 'elProjectId'
--
-- * 'elPageSize'
--
-- * 'elCallback'
enterprisesList
    :: EnterprisesList
enterprisesList =
  EnterprisesList'
    { _elXgafv = Nothing
    , _elUploadProtocol = Nothing
    , _elAccessToken = Nothing
    , _elUploadType = Nothing
    , _elView = Nothing
    , _elPageToken = Nothing
    , _elProjectId = Nothing
    , _elPageSize = Nothing
    , _elCallback = Nothing
    }


-- | V1 error format.
elXgafv :: Lens' EnterprisesList (Maybe Xgafv)
elXgafv = lens _elXgafv (\ s a -> s{_elXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elUploadProtocol :: Lens' EnterprisesList (Maybe Text)
elUploadProtocol
  = lens _elUploadProtocol
      (\ s a -> s{_elUploadProtocol = a})

-- | OAuth access token.
elAccessToken :: Lens' EnterprisesList (Maybe Text)
elAccessToken
  = lens _elAccessToken
      (\ s a -> s{_elAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elUploadType :: Lens' EnterprisesList (Maybe Text)
elUploadType
  = lens _elUploadType (\ s a -> s{_elUploadType = a})

-- | Specifies which Enterprise fields to return. This method only supports
-- BASIC.
elView :: Lens' EnterprisesList (Maybe EnterprisesListView)
elView = lens _elView (\ s a -> s{_elView = a})

-- | A token identifying a page of results returned by the server.
elPageToken :: Lens' EnterprisesList (Maybe Text)
elPageToken
  = lens _elPageToken (\ s a -> s{_elPageToken = a})

-- | Required. The Cloud project ID of the EMM managing the enterprises.
elProjectId :: Lens' EnterprisesList (Maybe Text)
elProjectId
  = lens _elProjectId (\ s a -> s{_elProjectId = a})

-- | The requested page size. The actual page size may be fixed to a min or
-- max value.
elPageSize :: Lens' EnterprisesList (Maybe Int32)
elPageSize
  = lens _elPageSize (\ s a -> s{_elPageSize = a}) .
      mapping _Coerce

-- | JSONP
elCallback :: Lens' EnterprisesList (Maybe Text)
elCallback
  = lens _elCallback (\ s a -> s{_elCallback = a})

instance GoogleRequest EnterprisesList where
        type Rs EnterprisesList = ListEnterprisesResponse
        type Scopes EnterprisesList =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesList'{..}
          = go _elXgafv _elUploadProtocol _elAccessToken
              _elUploadType
              _elView
              _elPageToken
              _elProjectId
              _elPageSize
              _elCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesListResource)
                      mempty
