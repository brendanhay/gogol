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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotationsets.delete@.
module Network.Google.Resource.Genomics.AnnotationSets.Delete
    (
    -- * REST Resource
      AnnotationSetsDeleteResource

    -- * Creating a Request
    , annotationSetsDelete
    , AnnotationSetsDelete

    -- * Request Lenses
    , asdXgafv
    , asdUploadProtocol
    , asdAnnotationSetId
    , asdPp
    , asdAccessToken
    , asdUploadType
    , asdBearerToken
    , asdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotationsets.delete@ method which the
-- 'AnnotationSetsDelete' request conforms to.
type AnnotationSetsDeleteResource =
     "v1" :>
       "annotationsets" :>
         Capture "annotationSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationSetsDelete' smart constructor.
data AnnotationSetsDelete = AnnotationSetsDelete'
    { _asdXgafv           :: !(Maybe Text)
    , _asdUploadProtocol  :: !(Maybe Text)
    , _asdAnnotationSetId :: !Text
    , _asdPp              :: !Bool
    , _asdAccessToken     :: !(Maybe Text)
    , _asdUploadType      :: !(Maybe Text)
    , _asdBearerToken     :: !(Maybe Text)
    , _asdCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdXgafv'
--
-- * 'asdUploadProtocol'
--
-- * 'asdAnnotationSetId'
--
-- * 'asdPp'
--
-- * 'asdAccessToken'
--
-- * 'asdUploadType'
--
-- * 'asdBearerToken'
--
-- * 'asdCallback'
annotationSetsDelete
    :: Text -- ^ 'asdAnnotationSetId'
    -> AnnotationSetsDelete
annotationSetsDelete pAsdAnnotationSetId_ =
    AnnotationSetsDelete'
    { _asdXgafv = Nothing
    , _asdUploadProtocol = Nothing
    , _asdAnnotationSetId = pAsdAnnotationSetId_
    , _asdPp = True
    , _asdAccessToken = Nothing
    , _asdUploadType = Nothing
    , _asdBearerToken = Nothing
    , _asdCallback = Nothing
    }

-- | V1 error format.
asdXgafv :: Lens' AnnotationSetsDelete (Maybe Text)
asdXgafv = lens _asdXgafv (\ s a -> s{_asdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asdUploadProtocol :: Lens' AnnotationSetsDelete (Maybe Text)
asdUploadProtocol
  = lens _asdUploadProtocol
      (\ s a -> s{_asdUploadProtocol = a})

-- | The ID of the annotation set to be deleted.
asdAnnotationSetId :: Lens' AnnotationSetsDelete Text
asdAnnotationSetId
  = lens _asdAnnotationSetId
      (\ s a -> s{_asdAnnotationSetId = a})

-- | Pretty-print response.
asdPp :: Lens' AnnotationSetsDelete Bool
asdPp = lens _asdPp (\ s a -> s{_asdPp = a})

-- | OAuth access token.
asdAccessToken :: Lens' AnnotationSetsDelete (Maybe Text)
asdAccessToken
  = lens _asdAccessToken
      (\ s a -> s{_asdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asdUploadType :: Lens' AnnotationSetsDelete (Maybe Text)
asdUploadType
  = lens _asdUploadType
      (\ s a -> s{_asdUploadType = a})

-- | OAuth bearer token.
asdBearerToken :: Lens' AnnotationSetsDelete (Maybe Text)
asdBearerToken
  = lens _asdBearerToken
      (\ s a -> s{_asdBearerToken = a})

-- | JSONP
asdCallback :: Lens' AnnotationSetsDelete (Maybe Text)
asdCallback
  = lens _asdCallback (\ s a -> s{_asdCallback = a})

instance GoogleRequest AnnotationSetsDelete where
        type Rs AnnotationSetsDelete = Empty
        type Scopes AnnotationSetsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationSetsDelete'{..}
          = go _asdAnnotationSetId _asdXgafv _asdUploadProtocol
              (Just _asdPp)
              _asdAccessToken
              _asdUploadType
              _asdBearerToken
              _asdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationSetsDeleteResource)
                      mempty
