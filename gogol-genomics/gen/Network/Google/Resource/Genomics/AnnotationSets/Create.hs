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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset. The following fields are required: * datasetId *
-- referenceSetId All other fields may be optionally specified, unless
-- documented as being server-generated (for example, the \`id\` field).
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.annotationsets.create@.
module Network.Google.Resource.Genomics.AnnotationSets.Create
    (
    -- * REST Resource
      AnnotationSetsCreateResource

    -- * Creating a Request
    , annotationSetsCreate
    , AnnotationSetsCreate

    -- * Request Lenses
    , ascXgafv
    , ascUploadProtocol
    , ascPp
    , ascAccessToken
    , ascUploadType
    , ascPayload
    , ascBearerToken
    , ascCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.annotationsets.create@ method which the
-- 'AnnotationSetsCreate' request conforms to.
type AnnotationSetsCreateResource =
     "v1" :>
       "annotationsets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AnnotationSet :>
                           Post '[JSON] AnnotationSet

-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset. The following fields are required: * datasetId *
-- referenceSetId All other fields may be optionally specified, unless
-- documented as being server-generated (for example, the \`id\` field).
--
-- /See:/ 'annotationSetsCreate' smart constructor.
data AnnotationSetsCreate = AnnotationSetsCreate'
    { _ascXgafv          :: !(Maybe Text)
    , _ascUploadProtocol :: !(Maybe Text)
    , _ascPp             :: !Bool
    , _ascAccessToken    :: !(Maybe Text)
    , _ascUploadType     :: !(Maybe Text)
    , _ascPayload        :: !AnnotationSet
    , _ascBearerToken    :: !(Maybe Text)
    , _ascCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascXgafv'
--
-- * 'ascUploadProtocol'
--
-- * 'ascPp'
--
-- * 'ascAccessToken'
--
-- * 'ascUploadType'
--
-- * 'ascPayload'
--
-- * 'ascBearerToken'
--
-- * 'ascCallback'
annotationSetsCreate
    :: AnnotationSet -- ^ 'ascPayload'
    -> AnnotationSetsCreate
annotationSetsCreate pAscPayload_ =
    AnnotationSetsCreate'
    { _ascXgafv = Nothing
    , _ascUploadProtocol = Nothing
    , _ascPp = True
    , _ascAccessToken = Nothing
    , _ascUploadType = Nothing
    , _ascPayload = pAscPayload_
    , _ascBearerToken = Nothing
    , _ascCallback = Nothing
    }

-- | V1 error format.
ascXgafv :: Lens' AnnotationSetsCreate (Maybe Text)
ascXgafv = lens _ascXgafv (\ s a -> s{_ascXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ascUploadProtocol :: Lens' AnnotationSetsCreate (Maybe Text)
ascUploadProtocol
  = lens _ascUploadProtocol
      (\ s a -> s{_ascUploadProtocol = a})

-- | Pretty-print response.
ascPp :: Lens' AnnotationSetsCreate Bool
ascPp = lens _ascPp (\ s a -> s{_ascPp = a})

-- | OAuth access token.
ascAccessToken :: Lens' AnnotationSetsCreate (Maybe Text)
ascAccessToken
  = lens _ascAccessToken
      (\ s a -> s{_ascAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ascUploadType :: Lens' AnnotationSetsCreate (Maybe Text)
ascUploadType
  = lens _ascUploadType
      (\ s a -> s{_ascUploadType = a})

-- | Multipart request metadata.
ascPayload :: Lens' AnnotationSetsCreate AnnotationSet
ascPayload
  = lens _ascPayload (\ s a -> s{_ascPayload = a})

-- | OAuth bearer token.
ascBearerToken :: Lens' AnnotationSetsCreate (Maybe Text)
ascBearerToken
  = lens _ascBearerToken
      (\ s a -> s{_ascBearerToken = a})

-- | JSONP
ascCallback :: Lens' AnnotationSetsCreate (Maybe Text)
ascCallback
  = lens _ascCallback (\ s a -> s{_ascCallback = a})

instance GoogleRequest AnnotationSetsCreate where
        type Rs AnnotationSetsCreate = AnnotationSet
        type Scopes AnnotationSetsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient AnnotationSetsCreate'{..}
          = go _ascXgafv _ascUploadProtocol (Just _ascPp)
              _ascAccessToken
              _ascUploadType
              _ascBearerToken
              _ascCallback
              (Just AltJSON)
              _ascPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy AnnotationSetsCreateResource)
                      mempty
