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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one placement by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.get@.
module Network.Google.Resource.DFAReporting.Placements.Get
    (
    -- * REST Resource
      PlacementsGetResource

    -- * Creating a Request
    , placementsGet
    , PlacementsGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgProFileId
    , pgId
    , pgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.get@ method which the
-- 'PlacementsGet' request conforms to.
type PlacementsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet' smart constructor.
data PlacementsGet =
  PlacementsGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgProFileId :: !(Textual Int64)
    , _pgId :: !(Textual Int64)
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgProFileId'
--
-- * 'pgId'
--
-- * 'pgCallback'
placementsGet
    :: Int64 -- ^ 'pgProFileId'
    -> Int64 -- ^ 'pgId'
    -> PlacementsGet
placementsGet pPgProFileId_ pPgId_ =
  PlacementsGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgProFileId = _Coerce # pPgProFileId_
    , _pgId = _Coerce # pPgId_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PlacementsGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PlacementsGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' PlacementsGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PlacementsGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | User profile ID associated with this request.
pgProFileId :: Lens' PlacementsGet Int64
pgProFileId
  = lens _pgProFileId (\ s a -> s{_pgProFileId = a}) .
      _Coerce

-- | Placement ID.
pgId :: Lens' PlacementsGet Int64
pgId = lens _pgId (\ s a -> s{_pgId = a}) . _Coerce

-- | JSONP
pgCallback :: Lens' PlacementsGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PlacementsGet where
        type Rs PlacementsGet = Placement
        type Scopes PlacementsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsGet'{..}
          = go _pgProFileId _pgId _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy PlacementsGetResource)
                      mempty
