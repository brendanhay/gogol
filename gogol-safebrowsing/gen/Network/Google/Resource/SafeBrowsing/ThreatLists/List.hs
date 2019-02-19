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
-- Module      : Network.Google.Resource.SafeBrowsing.ThreatLists.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Safe Browsing threat lists available for download.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatLists.list@.
module Network.Google.Resource.SafeBrowsing.ThreatLists.List
    (
    -- * REST Resource
      ThreatListsListResource

    -- * Creating a Request
    , threatListsList
    , ThreatListsList

    -- * Request Lenses
    , tllXgafv
    , tllUploadProtocol
    , tllAccessToken
    , tllUploadType
    , tllCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatLists.list@ method which the
-- 'ThreatListsList' request conforms to.
type ThreatListsListResource =
     "v4" :>
       "threatLists" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListThreatListsResponse

-- | Lists the Safe Browsing threat lists available for download.
--
-- /See:/ 'threatListsList' smart constructor.
data ThreatListsList =
  ThreatListsList'
    { _tllXgafv          :: !(Maybe Xgafv)
    , _tllUploadProtocol :: !(Maybe Text)
    , _tllAccessToken    :: !(Maybe Text)
    , _tllUploadType     :: !(Maybe Text)
    , _tllCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThreatListsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllXgafv'
--
-- * 'tllUploadProtocol'
--
-- * 'tllAccessToken'
--
-- * 'tllUploadType'
--
-- * 'tllCallback'
threatListsList
    :: ThreatListsList
threatListsList =
  ThreatListsList'
    { _tllXgafv = Nothing
    , _tllUploadProtocol = Nothing
    , _tllAccessToken = Nothing
    , _tllUploadType = Nothing
    , _tllCallback = Nothing
    }

-- | V1 error format.
tllXgafv :: Lens' ThreatListsList (Maybe Xgafv)
tllXgafv = lens _tllXgafv (\ s a -> s{_tllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tllUploadProtocol :: Lens' ThreatListsList (Maybe Text)
tllUploadProtocol
  = lens _tllUploadProtocol
      (\ s a -> s{_tllUploadProtocol = a})

-- | OAuth access token.
tllAccessToken :: Lens' ThreatListsList (Maybe Text)
tllAccessToken
  = lens _tllAccessToken
      (\ s a -> s{_tllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tllUploadType :: Lens' ThreatListsList (Maybe Text)
tllUploadType
  = lens _tllUploadType
      (\ s a -> s{_tllUploadType = a})

-- | JSONP
tllCallback :: Lens' ThreatListsList (Maybe Text)
tllCallback
  = lens _tllCallback (\ s a -> s{_tllCallback = a})

instance GoogleRequest ThreatListsList where
        type Rs ThreatListsList = ListThreatListsResponse
        type Scopes ThreatListsList = '[]
        requestClient ThreatListsList'{..}
          = go _tllXgafv _tllUploadProtocol _tllAccessToken
              _tllUploadType
              _tllCallback
              (Just AltJSON)
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy ThreatListsListResource)
                      mempty
