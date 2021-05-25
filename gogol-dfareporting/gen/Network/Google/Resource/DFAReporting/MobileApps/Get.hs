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
-- Module      : Network.Google.Resource.DFAReporting.MobileApps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one mobile app by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.mobileApps.get@.
module Network.Google.Resource.DFAReporting.MobileApps.Get
    (
    -- * REST Resource
      MobileAppsGetResource

    -- * Creating a Request
    , mobileAppsGet
    , MobileAppsGet

    -- * Request Lenses
    , magXgafv
    , magUploadProtocol
    , magAccessToken
    , magUploadType
    , magProFileId
    , magId
    , magCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileApps.get@ method which the
-- 'MobileAppsGet' request conforms to.
type MobileAppsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileApps" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] MobileApp

-- | Gets one mobile app by ID.
--
-- /See:/ 'mobileAppsGet' smart constructor.
data MobileAppsGet =
  MobileAppsGet'
    { _magXgafv :: !(Maybe Xgafv)
    , _magUploadProtocol :: !(Maybe Text)
    , _magAccessToken :: !(Maybe Text)
    , _magUploadType :: !(Maybe Text)
    , _magProFileId :: !(Textual Int64)
    , _magId :: !Text
    , _magCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileAppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'magXgafv'
--
-- * 'magUploadProtocol'
--
-- * 'magAccessToken'
--
-- * 'magUploadType'
--
-- * 'magProFileId'
--
-- * 'magId'
--
-- * 'magCallback'
mobileAppsGet
    :: Int64 -- ^ 'magProFileId'
    -> Text -- ^ 'magId'
    -> MobileAppsGet
mobileAppsGet pMagProFileId_ pMagId_ =
  MobileAppsGet'
    { _magXgafv = Nothing
    , _magUploadProtocol = Nothing
    , _magAccessToken = Nothing
    , _magUploadType = Nothing
    , _magProFileId = _Coerce # pMagProFileId_
    , _magId = pMagId_
    , _magCallback = Nothing
    }


-- | V1 error format.
magXgafv :: Lens' MobileAppsGet (Maybe Xgafv)
magXgafv = lens _magXgafv (\ s a -> s{_magXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
magUploadProtocol :: Lens' MobileAppsGet (Maybe Text)
magUploadProtocol
  = lens _magUploadProtocol
      (\ s a -> s{_magUploadProtocol = a})

-- | OAuth access token.
magAccessToken :: Lens' MobileAppsGet (Maybe Text)
magAccessToken
  = lens _magAccessToken
      (\ s a -> s{_magAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
magUploadType :: Lens' MobileAppsGet (Maybe Text)
magUploadType
  = lens _magUploadType
      (\ s a -> s{_magUploadType = a})

-- | User profile ID associated with this request.
magProFileId :: Lens' MobileAppsGet Int64
magProFileId
  = lens _magProFileId (\ s a -> s{_magProFileId = a})
      . _Coerce

-- | Mobile app ID.
magId :: Lens' MobileAppsGet Text
magId = lens _magId (\ s a -> s{_magId = a})

-- | JSONP
magCallback :: Lens' MobileAppsGet (Maybe Text)
magCallback
  = lens _magCallback (\ s a -> s{_magCallback = a})

instance GoogleRequest MobileAppsGet where
        type Rs MobileAppsGet = MobileApp
        type Scopes MobileAppsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileAppsGet'{..}
          = go _magProFileId _magId _magXgafv
              _magUploadProtocol
              _magAccessToken
              _magUploadType
              _magCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MobileAppsGetResource)
                      mempty
