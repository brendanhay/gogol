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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one directory site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.directorySites.get@.
module Network.Google.Resource.DFAReporting.DirectorySites.Get
    (
    -- * REST Resource
      DirectorySitesGetResource

    -- * Creating a Request
    , directorySitesGet
    , DirectorySitesGet

    -- * Request Lenses
    , dsgXgafv
    , dsgUploadProtocol
    , dsgAccessToken
    , dsgUploadType
    , dsgProFileId
    , dsgId
    , dsgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.directorySites.get@ method which the
-- 'DirectorySitesGet' request conforms to.
type DirectorySitesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "directorySites" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] DirectorySite

-- | Gets one directory site by ID.
--
-- /See:/ 'directorySitesGet' smart constructor.
data DirectorySitesGet =
  DirectorySitesGet'
    { _dsgXgafv :: !(Maybe Xgafv)
    , _dsgUploadProtocol :: !(Maybe Text)
    , _dsgAccessToken :: !(Maybe Text)
    , _dsgUploadType :: !(Maybe Text)
    , _dsgProFileId :: !(Textual Int64)
    , _dsgId :: !(Textual Int64)
    , _dsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectorySitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgXgafv'
--
-- * 'dsgUploadProtocol'
--
-- * 'dsgAccessToken'
--
-- * 'dsgUploadType'
--
-- * 'dsgProFileId'
--
-- * 'dsgId'
--
-- * 'dsgCallback'
directorySitesGet
    :: Int64 -- ^ 'dsgProFileId'
    -> Int64 -- ^ 'dsgId'
    -> DirectorySitesGet
directorySitesGet pDsgProFileId_ pDsgId_ =
  DirectorySitesGet'
    { _dsgXgafv = Nothing
    , _dsgUploadProtocol = Nothing
    , _dsgAccessToken = Nothing
    , _dsgUploadType = Nothing
    , _dsgProFileId = _Coerce # pDsgProFileId_
    , _dsgId = _Coerce # pDsgId_
    , _dsgCallback = Nothing
    }


-- | V1 error format.
dsgXgafv :: Lens' DirectorySitesGet (Maybe Xgafv)
dsgXgafv = lens _dsgXgafv (\ s a -> s{_dsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsgUploadProtocol :: Lens' DirectorySitesGet (Maybe Text)
dsgUploadProtocol
  = lens _dsgUploadProtocol
      (\ s a -> s{_dsgUploadProtocol = a})

-- | OAuth access token.
dsgAccessToken :: Lens' DirectorySitesGet (Maybe Text)
dsgAccessToken
  = lens _dsgAccessToken
      (\ s a -> s{_dsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsgUploadType :: Lens' DirectorySitesGet (Maybe Text)
dsgUploadType
  = lens _dsgUploadType
      (\ s a -> s{_dsgUploadType = a})

-- | User profile ID associated with this request.
dsgProFileId :: Lens' DirectorySitesGet Int64
dsgProFileId
  = lens _dsgProFileId (\ s a -> s{_dsgProFileId = a})
      . _Coerce

-- | Directory site ID.
dsgId :: Lens' DirectorySitesGet Int64
dsgId
  = lens _dsgId (\ s a -> s{_dsgId = a}) . _Coerce

-- | JSONP
dsgCallback :: Lens' DirectorySitesGet (Maybe Text)
dsgCallback
  = lens _dsgCallback (\ s a -> s{_dsgCallback = a})

instance GoogleRequest DirectorySitesGet where
        type Rs DirectorySitesGet = DirectorySite
        type Scopes DirectorySitesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DirectorySitesGet'{..}
          = go _dsgProFileId _dsgId _dsgXgafv
              _dsgUploadProtocol
              _dsgAccessToken
              _dsgUploadType
              _dsgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesGetResource)
                      mempty
