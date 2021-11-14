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
-- Module      : Network.Google.Resource.YouTube.MembershipsLevels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all pricing levels offered by a creator to the fans.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.membershipsLevels.list@.
module Network.Google.Resource.YouTube.MembershipsLevels.List
    (
    -- * REST Resource
      MembershipsLevelsListResource

    -- * Creating a Request
    , membershipsLevelsList
    , MembershipsLevelsList

    -- * Request Lenses
    , mllXgafv
    , mllPart
    , mllUploadProtocol
    , mllAccessToken
    , mllUploadType
    , mllCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.membershipsLevels.list@ method which the
-- 'MembershipsLevelsList' request conforms to.
type MembershipsLevelsListResource =
     "youtube" :>
       "v3" :>
         "membershipsLevels" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] MembershipsLevelListResponse

-- | Retrieves a list of all pricing levels offered by a creator to the fans.
--
-- /See:/ 'membershipsLevelsList' smart constructor.
data MembershipsLevelsList =
  MembershipsLevelsList'
    { _mllXgafv :: !(Maybe Xgafv)
    , _mllPart :: ![Text]
    , _mllUploadProtocol :: !(Maybe Text)
    , _mllAccessToken :: !(Maybe Text)
    , _mllUploadType :: !(Maybe Text)
    , _mllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembershipsLevelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mllXgafv'
--
-- * 'mllPart'
--
-- * 'mllUploadProtocol'
--
-- * 'mllAccessToken'
--
-- * 'mllUploadType'
--
-- * 'mllCallback'
membershipsLevelsList
    :: [Text] -- ^ 'mllPart'
    -> MembershipsLevelsList
membershipsLevelsList pMllPart_ =
  MembershipsLevelsList'
    { _mllXgafv = Nothing
    , _mllPart = _Coerce # pMllPart_
    , _mllUploadProtocol = Nothing
    , _mllAccessToken = Nothing
    , _mllUploadType = Nothing
    , _mllCallback = Nothing
    }


-- | V1 error format.
mllXgafv :: Lens' MembershipsLevelsList (Maybe Xgafv)
mllXgafv = lens _mllXgafv (\ s a -> s{_mllXgafv = a})

-- | The *part* parameter specifies the membershipsLevel resource parts that
-- the API response will include. Supported values are id and snippet.
mllPart :: Lens' MembershipsLevelsList [Text]
mllPart
  = lens _mllPart (\ s a -> s{_mllPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mllUploadProtocol :: Lens' MembershipsLevelsList (Maybe Text)
mllUploadProtocol
  = lens _mllUploadProtocol
      (\ s a -> s{_mllUploadProtocol = a})

-- | OAuth access token.
mllAccessToken :: Lens' MembershipsLevelsList (Maybe Text)
mllAccessToken
  = lens _mllAccessToken
      (\ s a -> s{_mllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mllUploadType :: Lens' MembershipsLevelsList (Maybe Text)
mllUploadType
  = lens _mllUploadType
      (\ s a -> s{_mllUploadType = a})

-- | JSONP
mllCallback :: Lens' MembershipsLevelsList (Maybe Text)
mllCallback
  = lens _mllCallback (\ s a -> s{_mllCallback = a})

instance GoogleRequest MembershipsLevelsList where
        type Rs MembershipsLevelsList =
             MembershipsLevelListResponse
        type Scopes MembershipsLevelsList =
             '["https://www.googleapis.com/auth/youtube.channel-memberships.creator"]
        requestClient MembershipsLevelsList'{..}
          = go _mllPart _mllXgafv _mllUploadProtocol
              _mllAccessToken
              _mllUploadType
              _mllCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy MembershipsLevelsListResource)
                      mempty
