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
-- Module      : Network.Google.Resource.Genomics.Variants.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a variant.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsDelete@.
module Network.Google.Resource.Genomics.Variants.Delete
    (
    -- * REST Resource
      VariantsDeleteResource

    -- * Creating a Request
    , variantsDelete'
    , VariantsDelete'

    -- * Request Lenses
    , vdXgafv
    , vdQuotaUser
    , vdPrettyPrint
    , vdUploadProtocol
    , vdPp
    , vdAccessToken
    , vdUploadType
    , vdBearerToken
    , vdKey
    , vdVariantId
    , vdOAuthToken
    , vdFields
    , vdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsDelete@ method which the
-- 'VariantsDelete'' request conforms to.
type VariantsDeleteResource =
     "v1" :>
       "variants" :>
         Capture "variantId" Text :>
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
                                     Delete '[JSON] Empty

-- | Deletes a variant.
--
-- /See:/ 'variantsDelete'' smart constructor.
data VariantsDelete' = VariantsDelete'
    { _vdXgafv          :: !(Maybe Text)
    , _vdQuotaUser      :: !(Maybe Text)
    , _vdPrettyPrint    :: !Bool
    , _vdUploadProtocol :: !(Maybe Text)
    , _vdPp             :: !Bool
    , _vdAccessToken    :: !(Maybe Text)
    , _vdUploadType     :: !(Maybe Text)
    , _vdBearerToken    :: !(Maybe Text)
    , _vdKey            :: !(Maybe AuthKey)
    , _vdVariantId      :: !Text
    , _vdOAuthToken     :: !(Maybe OAuthToken)
    , _vdFields         :: !(Maybe Text)
    , _vdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdXgafv'
--
-- * 'vdQuotaUser'
--
-- * 'vdPrettyPrint'
--
-- * 'vdUploadProtocol'
--
-- * 'vdPp'
--
-- * 'vdAccessToken'
--
-- * 'vdUploadType'
--
-- * 'vdBearerToken'
--
-- * 'vdKey'
--
-- * 'vdVariantId'
--
-- * 'vdOAuthToken'
--
-- * 'vdFields'
--
-- * 'vdCallback'
variantsDelete'
    :: Text -- ^ 'variantId'
    -> VariantsDelete'
variantsDelete' pVdVariantId_ =
    VariantsDelete'
    { _vdXgafv = Nothing
    , _vdQuotaUser = Nothing
    , _vdPrettyPrint = True
    , _vdUploadProtocol = Nothing
    , _vdPp = True
    , _vdAccessToken = Nothing
    , _vdUploadType = Nothing
    , _vdBearerToken = Nothing
    , _vdKey = Nothing
    , _vdVariantId = pVdVariantId_
    , _vdOAuthToken = Nothing
    , _vdFields = Nothing
    , _vdCallback = Nothing
    }

-- | V1 error format.
vdXgafv :: Lens' VariantsDelete' (Maybe Text)
vdXgafv = lens _vdXgafv (\ s a -> s{_vdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vdQuotaUser :: Lens' VariantsDelete' (Maybe Text)
vdQuotaUser
  = lens _vdQuotaUser (\ s a -> s{_vdQuotaUser = a})

-- | Returns response with indentations and line breaks.
vdPrettyPrint :: Lens' VariantsDelete' Bool
vdPrettyPrint
  = lens _vdPrettyPrint
      (\ s a -> s{_vdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vdUploadProtocol :: Lens' VariantsDelete' (Maybe Text)
vdUploadProtocol
  = lens _vdUploadProtocol
      (\ s a -> s{_vdUploadProtocol = a})

-- | Pretty-print response.
vdPp :: Lens' VariantsDelete' Bool
vdPp = lens _vdPp (\ s a -> s{_vdPp = a})

-- | OAuth access token.
vdAccessToken :: Lens' VariantsDelete' (Maybe Text)
vdAccessToken
  = lens _vdAccessToken
      (\ s a -> s{_vdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vdUploadType :: Lens' VariantsDelete' (Maybe Text)
vdUploadType
  = lens _vdUploadType (\ s a -> s{_vdUploadType = a})

-- | OAuth bearer token.
vdBearerToken :: Lens' VariantsDelete' (Maybe Text)
vdBearerToken
  = lens _vdBearerToken
      (\ s a -> s{_vdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vdKey :: Lens' VariantsDelete' (Maybe AuthKey)
vdKey = lens _vdKey (\ s a -> s{_vdKey = a})

-- | The ID of the variant to be deleted.
vdVariantId :: Lens' VariantsDelete' Text
vdVariantId
  = lens _vdVariantId (\ s a -> s{_vdVariantId = a})

-- | OAuth 2.0 token for the current user.
vdOAuthToken :: Lens' VariantsDelete' (Maybe OAuthToken)
vdOAuthToken
  = lens _vdOAuthToken (\ s a -> s{_vdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vdFields :: Lens' VariantsDelete' (Maybe Text)
vdFields = lens _vdFields (\ s a -> s{_vdFields = a})

-- | JSONP
vdCallback :: Lens' VariantsDelete' (Maybe Text)
vdCallback
  = lens _vdCallback (\ s a -> s{_vdCallback = a})

instance GoogleAuth VariantsDelete' where
        _AuthKey = vdKey . _Just
        _AuthToken = vdOAuthToken . _Just

instance GoogleRequest VariantsDelete' where
        type Rs VariantsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq VariantsDelete'{..}
          = go _vdVariantId _vdXgafv _vdUploadProtocol
              (Just _vdPp)
              _vdAccessToken
              _vdUploadType
              _vdBearerToken
              _vdCallback
              _vdQuotaUser
              (Just _vdPrettyPrint)
              _vdFields
              _vdKey
              _vdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy VariantsDeleteResource)
                      rq
