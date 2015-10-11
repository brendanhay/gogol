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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant set by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsGet@.
module Network.Google.Resource.Genomics.Variantsets.Get
    (
    -- * REST Resource
      VariantsetsGetResource

    -- * Creating a Request
    , variantsetsGet'
    , VariantsetsGet'

    -- * Request Lenses
    , vgXgafv
    , vgQuotaUser
    , vgPrettyPrint
    , vgUploadProtocol
    , vgPp
    , vgVariantSetId
    , vgAccessToken
    , vgUploadType
    , vgBearerToken
    , vgKey
    , vgOAuthToken
    , vgFields
    , vgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsGet@ method which the
-- 'VariantsetsGet'' request conforms to.
type VariantsetsGetResource =
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet'' smart constructor.
data VariantsetsGet' = VariantsetsGet'
    { _vgXgafv          :: !(Maybe Text)
    , _vgQuotaUser      :: !(Maybe Text)
    , _vgPrettyPrint    :: !Bool
    , _vgUploadProtocol :: !(Maybe Text)
    , _vgPp             :: !Bool
    , _vgVariantSetId   :: !Text
    , _vgAccessToken    :: !(Maybe Text)
    , _vgUploadType     :: !(Maybe Text)
    , _vgBearerToken    :: !(Maybe Text)
    , _vgKey            :: !(Maybe AuthKey)
    , _vgOAuthToken     :: !(Maybe OAuthToken)
    , _vgFields         :: !(Maybe Text)
    , _vgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgXgafv'
--
-- * 'vgQuotaUser'
--
-- * 'vgPrettyPrint'
--
-- * 'vgUploadProtocol'
--
-- * 'vgPp'
--
-- * 'vgVariantSetId'
--
-- * 'vgAccessToken'
--
-- * 'vgUploadType'
--
-- * 'vgBearerToken'
--
-- * 'vgKey'
--
-- * 'vgOAuthToken'
--
-- * 'vgFields'
--
-- * 'vgCallback'
variantsetsGet'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet'
variantsetsGet' pVgVariantSetId_ =
    VariantsetsGet'
    { _vgXgafv = Nothing
    , _vgQuotaUser = Nothing
    , _vgPrettyPrint = True
    , _vgUploadProtocol = Nothing
    , _vgPp = True
    , _vgVariantSetId = pVgVariantSetId_
    , _vgAccessToken = Nothing
    , _vgUploadType = Nothing
    , _vgBearerToken = Nothing
    , _vgKey = Nothing
    , _vgOAuthToken = Nothing
    , _vgFields = Nothing
    , _vgCallback = Nothing
    }

-- | V1 error format.
vgXgafv :: Lens' VariantsetsGet' (Maybe Text)
vgXgafv = lens _vgXgafv (\ s a -> s{_vgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vgQuotaUser :: Lens' VariantsetsGet' (Maybe Text)
vgQuotaUser
  = lens _vgQuotaUser (\ s a -> s{_vgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vgPrettyPrint :: Lens' VariantsetsGet' Bool
vgPrettyPrint
  = lens _vgPrettyPrint
      (\ s a -> s{_vgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vgUploadProtocol :: Lens' VariantsetsGet' (Maybe Text)
vgUploadProtocol
  = lens _vgUploadProtocol
      (\ s a -> s{_vgUploadProtocol = a})

-- | Pretty-print response.
vgPp :: Lens' VariantsetsGet' Bool
vgPp = lens _vgPp (\ s a -> s{_vgPp = a})

-- | Required. The ID of the variant set.
vgVariantSetId :: Lens' VariantsetsGet' Text
vgVariantSetId
  = lens _vgVariantSetId
      (\ s a -> s{_vgVariantSetId = a})

-- | OAuth access token.
vgAccessToken :: Lens' VariantsetsGet' (Maybe Text)
vgAccessToken
  = lens _vgAccessToken
      (\ s a -> s{_vgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vgUploadType :: Lens' VariantsetsGet' (Maybe Text)
vgUploadType
  = lens _vgUploadType (\ s a -> s{_vgUploadType = a})

-- | OAuth bearer token.
vgBearerToken :: Lens' VariantsetsGet' (Maybe Text)
vgBearerToken
  = lens _vgBearerToken
      (\ s a -> s{_vgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vgKey :: Lens' VariantsetsGet' (Maybe AuthKey)
vgKey = lens _vgKey (\ s a -> s{_vgKey = a})

-- | OAuth 2.0 token for the current user.
vgOAuthToken :: Lens' VariantsetsGet' (Maybe OAuthToken)
vgOAuthToken
  = lens _vgOAuthToken (\ s a -> s{_vgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vgFields :: Lens' VariantsetsGet' (Maybe Text)
vgFields = lens _vgFields (\ s a -> s{_vgFields = a})

-- | JSONP
vgCallback :: Lens' VariantsetsGet' (Maybe Text)
vgCallback
  = lens _vgCallback (\ s a -> s{_vgCallback = a})

instance GoogleAuth VariantsetsGet' where
        _AuthKey = vgKey . _Just
        _AuthToken = vgOAuthToken . _Just

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        request = requestWith genomicsRequest
        requestWith rq VariantsetsGet'{..}
          = go _vgVariantSetId _vgXgafv _vgUploadProtocol
              (Just _vgPp)
              _vgAccessToken
              _vgUploadType
              _vgBearerToken
              _vgCallback
              _vgQuotaUser
              (Just _vgPrettyPrint)
              _vgFields
              _vgKey
              _vgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy VariantsetsGetResource)
                      rq
