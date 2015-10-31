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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a read group set. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.delete@.
module Network.Google.Resource.Genomics.ReadGroupSets.Delete
    (
    -- * REST Resource
      ReadGroupSetsDeleteResource

    -- * Creating a Request
    , readGroupSetsDelete
    , ReadGroupSetsDelete

    -- * Request Lenses
    , rgsdXgafv
    , rgsdReadGroupSetId
    , rgsdUploadProtocol
    , rgsdPp
    , rgsdAccessToken
    , rgsdUploadType
    , rgsdBearerToken
    , rgsdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.delete@ method which the
-- 'ReadGroupSetsDelete' request conforms to.
type ReadGroupSetsDeleteResource =
     "v1" :>
       "readgroupsets" :>
         Capture "readGroupSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a read group set. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'readGroupSetsDelete' smart constructor.
data ReadGroupSetsDelete = ReadGroupSetsDelete
    { _rgsdXgafv          :: !(Maybe Text)
    , _rgsdReadGroupSetId :: !Text
    , _rgsdUploadProtocol :: !(Maybe Text)
    , _rgsdPp             :: !Bool
    , _rgsdAccessToken    :: !(Maybe Text)
    , _rgsdUploadType     :: !(Maybe Text)
    , _rgsdBearerToken    :: !(Maybe Text)
    , _rgsdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsdXgafv'
--
-- * 'rgsdReadGroupSetId'
--
-- * 'rgsdUploadProtocol'
--
-- * 'rgsdPp'
--
-- * 'rgsdAccessToken'
--
-- * 'rgsdUploadType'
--
-- * 'rgsdBearerToken'
--
-- * 'rgsdCallback'
readGroupSetsDelete
    :: Text -- ^ 'rgsdReadGroupSetId'
    -> ReadGroupSetsDelete
readGroupSetsDelete pRgsdReadGroupSetId_ =
    ReadGroupSetsDelete
    { _rgsdXgafv = Nothing
    , _rgsdReadGroupSetId = pRgsdReadGroupSetId_
    , _rgsdUploadProtocol = Nothing
    , _rgsdPp = True
    , _rgsdAccessToken = Nothing
    , _rgsdUploadType = Nothing
    , _rgsdBearerToken = Nothing
    , _rgsdCallback = Nothing
    }

-- | V1 error format.
rgsdXgafv :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdXgafv
  = lens _rgsdXgafv (\ s a -> s{_rgsdXgafv = a})

-- | The ID of the read group set to be deleted. The caller must have WRITE
-- permissions to the dataset associated with this read group set.
rgsdReadGroupSetId :: Lens' ReadGroupSetsDelete Text
rgsdReadGroupSetId
  = lens _rgsdReadGroupSetId
      (\ s a -> s{_rgsdReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgsdUploadProtocol :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdUploadProtocol
  = lens _rgsdUploadProtocol
      (\ s a -> s{_rgsdUploadProtocol = a})

-- | Pretty-print response.
rgsdPp :: Lens' ReadGroupSetsDelete Bool
rgsdPp = lens _rgsdPp (\ s a -> s{_rgsdPp = a})

-- | OAuth access token.
rgsdAccessToken :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdAccessToken
  = lens _rgsdAccessToken
      (\ s a -> s{_rgsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgsdUploadType :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdUploadType
  = lens _rgsdUploadType
      (\ s a -> s{_rgsdUploadType = a})

-- | OAuth bearer token.
rgsdBearerToken :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdBearerToken
  = lens _rgsdBearerToken
      (\ s a -> s{_rgsdBearerToken = a})

-- | JSONP
rgsdCallback :: Lens' ReadGroupSetsDelete (Maybe Text)
rgsdCallback
  = lens _rgsdCallback (\ s a -> s{_rgsdCallback = a})

instance GoogleRequest ReadGroupSetsDelete where
        type Rs ReadGroupSetsDelete = Empty
        type Scopes ReadGroupSetsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient ReadGroupSetsDelete{..}
          = go _rgsdReadGroupSetId _rgsdXgafv
              _rgsdUploadProtocol
              (Just _rgsdPp)
              _rgsdAccessToken
              _rgsdUploadType
              _rgsdBearerToken
              _rgsdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsDeleteResource)
                      mempty
