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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebApps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists web apps for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.list@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.List
    (
    -- * REST Resource
      EnterprisesWebAppsListResource

    -- * Creating a Request
    , enterprisesWebAppsList
    , EnterprisesWebAppsList

    -- * Request Lenses
    , ewalParent
    , ewalXgafv
    , ewalUploadProtocol
    , ewalAccessToken
    , ewalUploadType
    , ewalPageToken
    , ewalPageSize
    , ewalCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webApps.list@ method which the
-- 'EnterprisesWebAppsList' request conforms to.
type EnterprisesWebAppsListResource =
     "v1" :>
       Capture "parent" Text :>
         "webApps" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListWebAppsResponse

-- | Lists web apps for a given enterprise.
--
-- /See:/ 'enterprisesWebAppsList' smart constructor.
data EnterprisesWebAppsList =
  EnterprisesWebAppsList'
    { _ewalParent         :: !Text
    , _ewalXgafv          :: !(Maybe Xgafv)
    , _ewalUploadProtocol :: !(Maybe Text)
    , _ewalAccessToken    :: !(Maybe Text)
    , _ewalUploadType     :: !(Maybe Text)
    , _ewalPageToken      :: !(Maybe Text)
    , _ewalPageSize       :: !(Maybe (Textual Int32))
    , _ewalCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewalParent'
--
-- * 'ewalXgafv'
--
-- * 'ewalUploadProtocol'
--
-- * 'ewalAccessToken'
--
-- * 'ewalUploadType'
--
-- * 'ewalPageToken'
--
-- * 'ewalPageSize'
--
-- * 'ewalCallback'
enterprisesWebAppsList
    :: Text -- ^ 'ewalParent'
    -> EnterprisesWebAppsList
enterprisesWebAppsList pEwalParent_ =
  EnterprisesWebAppsList'
    { _ewalParent = pEwalParent_
    , _ewalXgafv = Nothing
    , _ewalUploadProtocol = Nothing
    , _ewalAccessToken = Nothing
    , _ewalUploadType = Nothing
    , _ewalPageToken = Nothing
    , _ewalPageSize = Nothing
    , _ewalCallback = Nothing
    }


-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
ewalParent :: Lens' EnterprisesWebAppsList Text
ewalParent
  = lens _ewalParent (\ s a -> s{_ewalParent = a})

-- | V1 error format.
ewalXgafv :: Lens' EnterprisesWebAppsList (Maybe Xgafv)
ewalXgafv
  = lens _ewalXgafv (\ s a -> s{_ewalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewalUploadProtocol :: Lens' EnterprisesWebAppsList (Maybe Text)
ewalUploadProtocol
  = lens _ewalUploadProtocol
      (\ s a -> s{_ewalUploadProtocol = a})

-- | OAuth access token.
ewalAccessToken :: Lens' EnterprisesWebAppsList (Maybe Text)
ewalAccessToken
  = lens _ewalAccessToken
      (\ s a -> s{_ewalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewalUploadType :: Lens' EnterprisesWebAppsList (Maybe Text)
ewalUploadType
  = lens _ewalUploadType
      (\ s a -> s{_ewalUploadType = a})

-- | A token identifying a page of results returned by the server.
ewalPageToken :: Lens' EnterprisesWebAppsList (Maybe Text)
ewalPageToken
  = lens _ewalPageToken
      (\ s a -> s{_ewalPageToken = a})

-- | The requested page size. The actual page size may be fixed to a min or
-- max value.
ewalPageSize :: Lens' EnterprisesWebAppsList (Maybe Int32)
ewalPageSize
  = lens _ewalPageSize (\ s a -> s{_ewalPageSize = a})
      . mapping _Coerce

-- | JSONP
ewalCallback :: Lens' EnterprisesWebAppsList (Maybe Text)
ewalCallback
  = lens _ewalCallback (\ s a -> s{_ewalCallback = a})

instance GoogleRequest EnterprisesWebAppsList where
        type Rs EnterprisesWebAppsList = ListWebAppsResponse
        type Scopes EnterprisesWebAppsList =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebAppsList'{..}
          = go _ewalParent _ewalXgafv _ewalUploadProtocol
              _ewalAccessToken
              _ewalUploadType
              _ewalPageToken
              _ewalPageSize
              _ewalCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebAppsListResource)
                      mempty
