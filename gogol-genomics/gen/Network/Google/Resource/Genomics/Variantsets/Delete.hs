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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ < Genomics API Reference> for @genomics.variantsets.delete@.
module Network.Google.Resource.Genomics.Variantsets.Delete
    (
    -- * REST Resource
      VariantsetsDeleteResource

    -- * Creating a Request
    , variantsetsDelete
    , VariantsetsDelete

    -- * Request Lenses
    , vdXgafv
    , vdUploadProtocol
    , vdPp
    , vdVariantSetId
    , vdAccessToken
    , vdUploadType
    , vdBearerToken
    , vdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.delete@ method which the
-- 'VariantsetsDelete' request conforms to.
type VariantsetsDeleteResource =
     "v1" :>
       "variantsets" :>
         Capture "variantSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ 'variantsetsDelete' smart constructor.
data VariantsetsDelete = VariantsetsDelete
    { _vdXgafv          :: !(Maybe Text)
    , _vdUploadProtocol :: !(Maybe Text)
    , _vdPp             :: !Bool
    , _vdVariantSetId   :: !Text
    , _vdAccessToken    :: !(Maybe Text)
    , _vdUploadType     :: !(Maybe Text)
    , _vdBearerToken    :: !(Maybe Text)
    , _vdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdXgafv'
--
-- * 'vdUploadProtocol'
--
-- * 'vdPp'
--
-- * 'vdVariantSetId'
--
-- * 'vdAccessToken'
--
-- * 'vdUploadType'
--
-- * 'vdBearerToken'
--
-- * 'vdCallback'
variantsetsDelete
    :: Text -- ^ 'vdVariantSetId'
    -> VariantsetsDelete
variantsetsDelete pVdVariantSetId_ =
    VariantsetsDelete
    { _vdXgafv = Nothing
    , _vdUploadProtocol = Nothing
    , _vdPp = True
    , _vdVariantSetId = pVdVariantSetId_
    , _vdAccessToken = Nothing
    , _vdUploadType = Nothing
    , _vdBearerToken = Nothing
    , _vdCallback = Nothing
    }

-- | V1 error format.
vdXgafv :: Lens' VariantsetsDelete (Maybe Text)
vdXgafv = lens _vdXgafv (\ s a -> s{_vdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vdUploadProtocol :: Lens' VariantsetsDelete (Maybe Text)
vdUploadProtocol
  = lens _vdUploadProtocol
      (\ s a -> s{_vdUploadProtocol = a})

-- | Pretty-print response.
vdPp :: Lens' VariantsetsDelete Bool
vdPp = lens _vdPp (\ s a -> s{_vdPp = a})

-- | The ID of the variant set to be deleted.
vdVariantSetId :: Lens' VariantsetsDelete Text
vdVariantSetId
  = lens _vdVariantSetId
      (\ s a -> s{_vdVariantSetId = a})

-- | OAuth access token.
vdAccessToken :: Lens' VariantsetsDelete (Maybe Text)
vdAccessToken
  = lens _vdAccessToken
      (\ s a -> s{_vdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vdUploadType :: Lens' VariantsetsDelete (Maybe Text)
vdUploadType
  = lens _vdUploadType (\ s a -> s{_vdUploadType = a})

-- | OAuth bearer token.
vdBearerToken :: Lens' VariantsetsDelete (Maybe Text)
vdBearerToken
  = lens _vdBearerToken
      (\ s a -> s{_vdBearerToken = a})

-- | JSONP
vdCallback :: Lens' VariantsetsDelete (Maybe Text)
vdCallback
  = lens _vdCallback (\ s a -> s{_vdCallback = a})

instance GoogleRequest VariantsetsDelete where
        type Rs VariantsetsDelete = Empty
        requestClient VariantsetsDelete{..}
          = go _vdVariantSetId _vdXgafv _vdUploadProtocol
              (Just _vdPp)
              _vdAccessToken
              _vdUploadType
              _vdBearerToken
              _vdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsDeleteResource)
                      mempty
