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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sites.get@.
module Network.Google.Resource.DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sggXgafv
    , sggUploadProtocol
    , sggAccessToken
    , sggUploadType
    , sggProFileId
    , sggId
    , sggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.get@ method which the
-- 'SitesGet' request conforms to.
type SitesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet =
  SitesGet'
    { _sggXgafv :: !(Maybe Xgafv)
    , _sggUploadProtocol :: !(Maybe Text)
    , _sggAccessToken :: !(Maybe Text)
    , _sggUploadType :: !(Maybe Text)
    , _sggProFileId :: !(Textual Int64)
    , _sggId :: !(Textual Int64)
    , _sggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggXgafv'
--
-- * 'sggUploadProtocol'
--
-- * 'sggAccessToken'
--
-- * 'sggUploadType'
--
-- * 'sggProFileId'
--
-- * 'sggId'
--
-- * 'sggCallback'
sitesGet
    :: Int64 -- ^ 'sggProFileId'
    -> Int64 -- ^ 'sggId'
    -> SitesGet
sitesGet pSggProFileId_ pSggId_ =
  SitesGet'
    { _sggXgafv = Nothing
    , _sggUploadProtocol = Nothing
    , _sggAccessToken = Nothing
    , _sggUploadType = Nothing
    , _sggProFileId = _Coerce # pSggProFileId_
    , _sggId = _Coerce # pSggId_
    , _sggCallback = Nothing
    }


-- | V1 error format.
sggXgafv :: Lens' SitesGet (Maybe Xgafv)
sggXgafv = lens _sggXgafv (\ s a -> s{_sggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sggUploadProtocol :: Lens' SitesGet (Maybe Text)
sggUploadProtocol
  = lens _sggUploadProtocol
      (\ s a -> s{_sggUploadProtocol = a})

-- | OAuth access token.
sggAccessToken :: Lens' SitesGet (Maybe Text)
sggAccessToken
  = lens _sggAccessToken
      (\ s a -> s{_sggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sggUploadType :: Lens' SitesGet (Maybe Text)
sggUploadType
  = lens _sggUploadType
      (\ s a -> s{_sggUploadType = a})

-- | User profile ID associated with this request.
sggProFileId :: Lens' SitesGet Int64
sggProFileId
  = lens _sggProFileId (\ s a -> s{_sggProFileId = a})
      . _Coerce

-- | Site ID.
sggId :: Lens' SitesGet Int64
sggId
  = lens _sggId (\ s a -> s{_sggId = a}) . _Coerce

-- | JSONP
sggCallback :: Lens' SitesGet (Maybe Text)
sggCallback
  = lens _sggCallback (\ s a -> s{_sggCallback = a})

instance GoogleRequest SitesGet where
        type Rs SitesGet = Site
        type Scopes SitesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesGet'{..}
          = go _sggProFileId _sggId _sggXgafv
              _sggUploadProtocol
              _sggAccessToken
              _sggUploadType
              _sggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
