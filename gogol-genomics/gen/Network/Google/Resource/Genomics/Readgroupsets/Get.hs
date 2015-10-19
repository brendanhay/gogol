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
-- Module      : Network.Google.Resource.Genomics.Readgroupsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a read group set by ID.
--
-- /See:/ < Genomics API Reference> for @genomics.readgroupsets.get@.
module Network.Google.Resource.Genomics.Readgroupsets.Get
    (
    -- * REST Resource
      ReadgroupsetsGetResource

    -- * Creating a Request
    , readgroupsetsGet'
    , ReadgroupsetsGet'

    -- * Request Lenses
    , rgXgafv
    , rgReadGroupSetId
    , rgUploadProtocol
    , rgPp
    , rgAccessToken
    , rgUploadType
    , rgBearerToken
    , rgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.readgroupsets.get@ method which the
-- 'ReadgroupsetsGet'' request conforms to.
type ReadgroupsetsGetResource =
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

-- | Gets a read group set by ID.
--
-- /See:/ 'readgroupsetsGet'' smart constructor.
data ReadgroupsetsGet' = ReadgroupsetsGet'
    { _rgXgafv          :: !(Maybe Text)
    , _rgReadGroupSetId :: !Text
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgPp             :: !Bool
    , _rgAccessToken    :: !(Maybe Text)
    , _rgUploadType     :: !(Maybe Text)
    , _rgBearerToken    :: !(Maybe Text)
    , _rgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadgroupsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgReadGroupSetId'
--
-- * 'rgUploadProtocol'
--
-- * 'rgPp'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgBearerToken'
--
-- * 'rgCallback'
readgroupsetsGet'
    :: Text -- ^ 'rgReadGroupSetId'
    -> ReadgroupsetsGet'
readgroupsetsGet' pRgReadGroupSetId_ =
    ReadgroupsetsGet'
    { _rgXgafv = Nothing
    , _rgReadGroupSetId = pRgReadGroupSetId_
    , _rgUploadProtocol = Nothing
    , _rgPp = True
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgBearerToken = Nothing
    , _rgCallback = Nothing
    }

-- | V1 error format.
rgXgafv :: Lens' ReadgroupsetsGet' (Maybe Text)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | The ID of the read group set.
rgReadGroupSetId :: Lens' ReadgroupsetsGet' Text
rgReadGroupSetId
  = lens _rgReadGroupSetId
      (\ s a -> s{_rgReadGroupSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ReadgroupsetsGet' (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | Pretty-print response.
rgPp :: Lens' ReadgroupsetsGet' Bool
rgPp = lens _rgPp (\ s a -> s{_rgPp = a})

-- | OAuth access token.
rgAccessToken :: Lens' ReadgroupsetsGet' (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ReadgroupsetsGet' (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | OAuth bearer token.
rgBearerToken :: Lens' ReadgroupsetsGet' (Maybe Text)
rgBearerToken
  = lens _rgBearerToken
      (\ s a -> s{_rgBearerToken = a})

-- | JSONP
rgCallback :: Lens' ReadgroupsetsGet' (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ReadgroupsetsGet' where
        type Rs ReadgroupsetsGet' = ReadGroupSet
        requestClient ReadgroupsetsGet'{..}
          = go _rgReadGroupSetId _rgXgafv _rgUploadProtocol
              (Just _rgPp)
              _rgAccessToken
              _rgUploadType
              _rgBearerToken
              _rgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReadgroupsetsGetResource)
                      mempty
