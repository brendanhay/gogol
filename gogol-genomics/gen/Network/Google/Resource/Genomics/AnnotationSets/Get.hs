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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.annotationsets.get@.
module Network.Google.Resource.Genomics.AnnotationSets.Get
    (
    -- * REST Resource
      AnnotationSetsGetResource

    -- * Creating a Request
    , annotationSetsGet
    , AnnotationSetsGet

    -- * Request Lenses
    , asgXgafv
    , asgUploadProtocol
    , asgAnnotationSetId
    , asgPp
    , asgAccessToken
    , asgUploadType
    , asgBearerToken
    , asgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotationsets.get@ method which the
-- 'AnnotationSetsGet' request conforms to.
type AnnotationSetsGetResource =
     "v1" :>
       "annotationsets" :>
         Capture "annotationSetId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AnnotationSet

-- | Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
--
-- /See:/ 'annotationSetsGet' smart constructor.
data AnnotationSetsGet = AnnotationSetsGet'
    { _asgXgafv           :: !(Maybe Xgafv)
    , _asgUploadProtocol  :: !(Maybe Text)
    , _asgAnnotationSetId :: !Text
    , _asgPp              :: !Bool
    , _asgAccessToken     :: !(Maybe Text)
    , _asgUploadType      :: !(Maybe Text)
    , _asgBearerToken     :: !(Maybe Text)
    , _asgCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgXgafv'
--
-- * 'asgUploadProtocol'
--
-- * 'asgAnnotationSetId'
--
-- * 'asgPp'
--
-- * 'asgAccessToken'
--
-- * 'asgUploadType'
--
-- * 'asgBearerToken'
--
-- * 'asgCallback'
annotationSetsGet
    :: Text -- ^ 'asgAnnotationSetId'
    -> AnnotationSetsGet
annotationSetsGet pAsgAnnotationSetId_ =
    AnnotationSetsGet'
    { _asgXgafv = Nothing
    , _asgUploadProtocol = Nothing
    , _asgAnnotationSetId = pAsgAnnotationSetId_
    , _asgPp = True
    , _asgAccessToken = Nothing
    , _asgUploadType = Nothing
    , _asgBearerToken = Nothing
    , _asgCallback = Nothing
    }

-- | V1 error format.
asgXgafv :: Lens' AnnotationSetsGet (Maybe Xgafv)
asgXgafv = lens _asgXgafv (\ s a -> s{_asgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asgUploadProtocol :: Lens' AnnotationSetsGet (Maybe Text)
asgUploadProtocol
  = lens _asgUploadProtocol
      (\ s a -> s{_asgUploadProtocol = a})

-- | The ID of the annotation set to be retrieved.
asgAnnotationSetId :: Lens' AnnotationSetsGet Text
asgAnnotationSetId
  = lens _asgAnnotationSetId
      (\ s a -> s{_asgAnnotationSetId = a})

-- | Pretty-print response.
asgPp :: Lens' AnnotationSetsGet Bool
asgPp = lens _asgPp (\ s a -> s{_asgPp = a})

-- | OAuth access token.
asgAccessToken :: Lens' AnnotationSetsGet (Maybe Text)
asgAccessToken
  = lens _asgAccessToken
      (\ s a -> s{_asgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asgUploadType :: Lens' AnnotationSetsGet (Maybe Text)
asgUploadType
  = lens _asgUploadType
      (\ s a -> s{_asgUploadType = a})

-- | OAuth bearer token.
asgBearerToken :: Lens' AnnotationSetsGet (Maybe Text)
asgBearerToken
  = lens _asgBearerToken
      (\ s a -> s{_asgBearerToken = a})

-- | JSONP
asgCallback :: Lens' AnnotationSetsGet (Maybe Text)
asgCallback
  = lens _asgCallback (\ s a -> s{_asgCallback = a})

instance GoogleRequest AnnotationSetsGet where
        type Rs AnnotationSetsGet = AnnotationSet
        type Scopes AnnotationSetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient AnnotationSetsGet'{..}
          = go _asgAnnotationSetId _asgXgafv _asgUploadProtocol
              (Just _asgPp)
              _asgAccessToken
              _asgUploadType
              _asgBearerToken
              _asgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationSetsGetResource)
                      mempty
