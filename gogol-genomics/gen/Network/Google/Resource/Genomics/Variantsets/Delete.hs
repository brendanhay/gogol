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
-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsDelete@.
module Network.Google.Resource.Genomics.Variantsets.Delete
    (
    -- * REST Resource
      VariantsetsDeleteResource

    -- * Creating a Request
    , variantsetsDelete'
    , VariantsetsDelete'

    -- * Request Lenses
    , vddXgafv
    , vddQuotaUser
    , vddPrettyPrint
    , vddUploadProtocol
    , vddPp
    , vddVariantSetId
    , vddAccessToken
    , vddUploadType
    , vddBearerToken
    , vddKey
    , vddOAuthToken
    , vddFields
    , vddCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsDelete@ method which the
-- 'VariantsetsDelete'' request conforms to.
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Delete '[JSON] Empty

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ 'variantsetsDelete'' smart constructor.
data VariantsetsDelete' = VariantsetsDelete'
    { _vddXgafv          :: !(Maybe Text)
    , _vddQuotaUser      :: !(Maybe Text)
    , _vddPrettyPrint    :: !Bool
    , _vddUploadProtocol :: !(Maybe Text)
    , _vddPp             :: !Bool
    , _vddVariantSetId   :: !Text
    , _vddAccessToken    :: !(Maybe Text)
    , _vddUploadType     :: !(Maybe Text)
    , _vddBearerToken    :: !(Maybe Text)
    , _vddKey            :: !(Maybe AuthKey)
    , _vddOAuthToken     :: !(Maybe OAuthToken)
    , _vddFields         :: !(Maybe Text)
    , _vddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vddXgafv'
--
-- * 'vddQuotaUser'
--
-- * 'vddPrettyPrint'
--
-- * 'vddUploadProtocol'
--
-- * 'vddPp'
--
-- * 'vddVariantSetId'
--
-- * 'vddAccessToken'
--
-- * 'vddUploadType'
--
-- * 'vddBearerToken'
--
-- * 'vddKey'
--
-- * 'vddOAuthToken'
--
-- * 'vddFields'
--
-- * 'vddCallback'
variantsetsDelete'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsDelete'
variantsetsDelete' pVddVariantSetId_ =
    VariantsetsDelete'
    { _vddXgafv = Nothing
    , _vddQuotaUser = Nothing
    , _vddPrettyPrint = True
    , _vddUploadProtocol = Nothing
    , _vddPp = True
    , _vddVariantSetId = pVddVariantSetId_
    , _vddAccessToken = Nothing
    , _vddUploadType = Nothing
    , _vddBearerToken = Nothing
    , _vddKey = Nothing
    , _vddOAuthToken = Nothing
    , _vddFields = Nothing
    , _vddCallback = Nothing
    }

-- | V1 error format.
vddXgafv :: Lens' VariantsetsDelete' (Maybe Text)
vddXgafv = lens _vddXgafv (\ s a -> s{_vddXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vddQuotaUser :: Lens' VariantsetsDelete' (Maybe Text)
vddQuotaUser
  = lens _vddQuotaUser (\ s a -> s{_vddQuotaUser = a})

-- | Returns response with indentations and line breaks.
vddPrettyPrint :: Lens' VariantsetsDelete' Bool
vddPrettyPrint
  = lens _vddPrettyPrint
      (\ s a -> s{_vddPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vddUploadProtocol :: Lens' VariantsetsDelete' (Maybe Text)
vddUploadProtocol
  = lens _vddUploadProtocol
      (\ s a -> s{_vddUploadProtocol = a})

-- | Pretty-print response.
vddPp :: Lens' VariantsetsDelete' Bool
vddPp = lens _vddPp (\ s a -> s{_vddPp = a})

-- | The ID of the variant set to be deleted.
vddVariantSetId :: Lens' VariantsetsDelete' Text
vddVariantSetId
  = lens _vddVariantSetId
      (\ s a -> s{_vddVariantSetId = a})

-- | OAuth access token.
vddAccessToken :: Lens' VariantsetsDelete' (Maybe Text)
vddAccessToken
  = lens _vddAccessToken
      (\ s a -> s{_vddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vddUploadType :: Lens' VariantsetsDelete' (Maybe Text)
vddUploadType
  = lens _vddUploadType
      (\ s a -> s{_vddUploadType = a})

-- | OAuth bearer token.
vddBearerToken :: Lens' VariantsetsDelete' (Maybe Text)
vddBearerToken
  = lens _vddBearerToken
      (\ s a -> s{_vddBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vddKey :: Lens' VariantsetsDelete' (Maybe AuthKey)
vddKey = lens _vddKey (\ s a -> s{_vddKey = a})

-- | OAuth 2.0 token for the current user.
vddOAuthToken :: Lens' VariantsetsDelete' (Maybe OAuthToken)
vddOAuthToken
  = lens _vddOAuthToken
      (\ s a -> s{_vddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vddFields :: Lens' VariantsetsDelete' (Maybe Text)
vddFields
  = lens _vddFields (\ s a -> s{_vddFields = a})

-- | JSONP
vddCallback :: Lens' VariantsetsDelete' (Maybe Text)
vddCallback
  = lens _vddCallback (\ s a -> s{_vddCallback = a})

instance GoogleAuth VariantsetsDelete' where
        _AuthKey = vddKey . _Just
        _AuthToken = vddOAuthToken . _Just

instance GoogleRequest VariantsetsDelete' where
        type Rs VariantsetsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq VariantsetsDelete'{..}
          = go _vddVariantSetId _vddXgafv _vddUploadProtocol
              (Just _vddPp)
              _vddAccessToken
              _vddUploadType
              _vddBearerToken
              _vddCallback
              _vddQuotaUser
              (Just _vddPrettyPrint)
              _vddFields
              _vddKey
              _vddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy VariantsetsDeleteResource)
                      rq
