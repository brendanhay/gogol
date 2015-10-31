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
-- Module      : Network.Google.Resource.Genomics.ReadGroupSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a read group set by ID. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.readgroupsets.get@.
module Network.Google.Resource.Genomics.ReadGroupSets.Get
    (
    -- * REST Resource
      ReadGroupSetsGetResource

    -- * Creating a Request
    , readGroupSetsGet
    , ReadGroupSetsGet

    -- * Request Lenses
    , rgsgXgafv
    , rgsgReadGroupSetId
    , rgsgUploadProtocol
    , rgsgPp
    , rgsgAccessToken
    , rgsgUploadType
    , rgsgBearerToken
    , rgsgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.get@ method which the
-- 'ReadGroupSetsGet' request conforms to.
type ReadGroupSetsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] ReadGroupSet

-- | Gets a read group set by ID. For the definitions of read group sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'readGroupSetsGet' smart constructor.
data ReadGroupSetsGet = ReadGroupSetsGet
    { _rgsgXgafv          :: !(Maybe Text)
    , _rgsgReadGroupSetId :: !Text
    , _rgsgUploadProtocol :: !(Maybe Text)
    , _rgsgPp             :: !Bool
    , _rgsgAccessToken    :: !(Maybe Text)
    , _rgsgUploadType     :: !(Maybe Text)
    , _rgsgBearerToken    :: !(Maybe Text)
    , _rgsgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsgXgafv'
--
-- * 'rgsgReadGroupSetId'
--
-- * 'rgsgUploadProtocol'
--
-- * 'rgsgPp'
--
-- * 'rgsgAccessToken'
--
-- * 'rgsgUploadType'
--
-- * 'rgsgBearerToken'
--
-- * 'rgsgCallback'
readGroupSetsGet
    :: Text -- ^ 'rgsgReadGroupSetId'
    -> ReadGroupSetsGet
readGroupSetsGet pRgsgReadGroupSetId_ =
    ReadGroupSetsGet
    { _rgsgXgafv = Nothing
    , _rgsgReadGroupSetId = pRgsgReadGroupSetId_
    , _rgsgUploadProtocol = Nothing
    , _rgsgPp = True
    , _rgsgAccessToken = Nothing
    , _rgsgUploadType = Nothing
    , _rgsgBearerToken = Nothing
    , _rgsgCallback = Nothing
    }

-- | V1 error format.
rgsgXgafv :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgXgafv
  = lens _rgsgXgafv (\ s a -> s{_rgsgXgafv = a})

-- | The ID of the read group set.
rgsgReadGroupSetId :: Lens' ReadGroupSetsGet Text
rgsgReadGroupSetId
  = lens _rgsgReadGroupSetId
      (\ s a -> s{_rgsgReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgsgUploadProtocol :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgUploadProtocol
  = lens _rgsgUploadProtocol
      (\ s a -> s{_rgsgUploadProtocol = a})

-- | Pretty-print response.
rgsgPp :: Lens' ReadGroupSetsGet Bool
rgsgPp = lens _rgsgPp (\ s a -> s{_rgsgPp = a})

-- | OAuth access token.
rgsgAccessToken :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgAccessToken
  = lens _rgsgAccessToken
      (\ s a -> s{_rgsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgsgUploadType :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgUploadType
  = lens _rgsgUploadType
      (\ s a -> s{_rgsgUploadType = a})

-- | OAuth bearer token.
rgsgBearerToken :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgBearerToken
  = lens _rgsgBearerToken
      (\ s a -> s{_rgsgBearerToken = a})

-- | JSONP
rgsgCallback :: Lens' ReadGroupSetsGet (Maybe Text)
rgsgCallback
  = lens _rgsgCallback (\ s a -> s{_rgsgCallback = a})

instance GoogleRequest ReadGroupSetsGet where
        type Rs ReadGroupSetsGet = ReadGroupSet
        type Scopes ReadGroupSetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient ReadGroupSetsGet{..}
          = go _rgsgReadGroupSetId _rgsgXgafv
              _rgsgUploadProtocol
              (Just _rgsgPp)
              _rgsgAccessToken
              _rgsgUploadType
              _rgsgBearerToken
              _rgsgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadGroupSetsGetResource)
                      mempty
