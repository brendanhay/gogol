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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsPatch@.
module Network.Google.Resource.Genomics.Variantsets.Patch
    (
    -- * REST Resource
      VariantsetsPatchResource

    -- * Creating a Request
    , variantsetsPatch'
    , VariantsetsPatch'

    -- * Request Lenses
    , vpXgafv
    , vpQuotaUser
    , vpPrettyPrint
    , vpUploadProtocol
    , vpUpdateMask
    , vpPp
    , vpVariantSetId
    , vpAccessToken
    , vpUploadType
    , vpPayload
    , vpBearerToken
    , vpKey
    , vpOAuthToken
    , vpFields
    , vpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsPatch@ method which the
-- 'VariantsetsPatch'' request conforms to.
type VariantsetsPatchResource =
     "v1" :>
       "variantsets" :>
         Capture "variantSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
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
                                       ReqBody '[JSON] VariantSet :>
                                         Patch '[JSON] VariantSet

-- | Updates a variant set. This method supports patch semantics.
--
-- /See:/ 'variantsetsPatch'' smart constructor.
data VariantsetsPatch' = VariantsetsPatch'
    { _vpXgafv          :: !(Maybe Text)
    , _vpQuotaUser      :: !(Maybe Text)
    , _vpPrettyPrint    :: !Bool
    , _vpUploadProtocol :: !(Maybe Text)
    , _vpUpdateMask     :: !(Maybe Text)
    , _vpPp             :: !Bool
    , _vpVariantSetId   :: !Text
    , _vpAccessToken    :: !(Maybe Text)
    , _vpUploadType     :: !(Maybe Text)
    , _vpPayload        :: !VariantSet
    , _vpBearerToken    :: !(Maybe Text)
    , _vpKey            :: !(Maybe AuthKey)
    , _vpOAuthToken     :: !(Maybe OAuthToken)
    , _vpFields         :: !(Maybe Text)
    , _vpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpXgafv'
--
-- * 'vpQuotaUser'
--
-- * 'vpPrettyPrint'
--
-- * 'vpUploadProtocol'
--
-- * 'vpUpdateMask'
--
-- * 'vpPp'
--
-- * 'vpVariantSetId'
--
-- * 'vpAccessToken'
--
-- * 'vpUploadType'
--
-- * 'vpPayload'
--
-- * 'vpBearerToken'
--
-- * 'vpKey'
--
-- * 'vpOAuthToken'
--
-- * 'vpFields'
--
-- * 'vpCallback'
variantsetsPatch'
    :: Text -- ^ 'variantSetId'
    -> VariantSet -- ^ 'payload'
    -> VariantsetsPatch'
variantsetsPatch' pVpVariantSetId_ pVpPayload_ =
    VariantsetsPatch'
    { _vpXgafv = Nothing
    , _vpQuotaUser = Nothing
    , _vpPrettyPrint = True
    , _vpUploadProtocol = Nothing
    , _vpUpdateMask = Nothing
    , _vpPp = True
    , _vpVariantSetId = pVpVariantSetId_
    , _vpAccessToken = Nothing
    , _vpUploadType = Nothing
    , _vpPayload = pVpPayload_
    , _vpBearerToken = Nothing
    , _vpKey = Nothing
    , _vpOAuthToken = Nothing
    , _vpFields = Nothing
    , _vpCallback = Nothing
    }

-- | V1 error format.
vpXgafv :: Lens' VariantsetsPatch' (Maybe Text)
vpXgafv = lens _vpXgafv (\ s a -> s{_vpXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vpQuotaUser :: Lens' VariantsetsPatch' (Maybe Text)
vpQuotaUser
  = lens _vpQuotaUser (\ s a -> s{_vpQuotaUser = a})

-- | Returns response with indentations and line breaks.
vpPrettyPrint :: Lens' VariantsetsPatch' Bool
vpPrettyPrint
  = lens _vpPrettyPrint
      (\ s a -> s{_vpPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vpUploadProtocol :: Lens' VariantsetsPatch' (Maybe Text)
vpUploadProtocol
  = lens _vpUploadProtocol
      (\ s a -> s{_vpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is metadata. The only acceptable value is
-- \"metadata\". If unspecified, all mutable fields will be updated.
vpUpdateMask :: Lens' VariantsetsPatch' (Maybe Text)
vpUpdateMask
  = lens _vpUpdateMask (\ s a -> s{_vpUpdateMask = a})

-- | Pretty-print response.
vpPp :: Lens' VariantsetsPatch' Bool
vpPp = lens _vpPp (\ s a -> s{_vpPp = a})

-- | The ID of the variant to be updated (must already exist).
vpVariantSetId :: Lens' VariantsetsPatch' Text
vpVariantSetId
  = lens _vpVariantSetId
      (\ s a -> s{_vpVariantSetId = a})

-- | OAuth access token.
vpAccessToken :: Lens' VariantsetsPatch' (Maybe Text)
vpAccessToken
  = lens _vpAccessToken
      (\ s a -> s{_vpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vpUploadType :: Lens' VariantsetsPatch' (Maybe Text)
vpUploadType
  = lens _vpUploadType (\ s a -> s{_vpUploadType = a})

-- | Multipart request metadata.
vpPayload :: Lens' VariantsetsPatch' VariantSet
vpPayload
  = lens _vpPayload (\ s a -> s{_vpPayload = a})

-- | OAuth bearer token.
vpBearerToken :: Lens' VariantsetsPatch' (Maybe Text)
vpBearerToken
  = lens _vpBearerToken
      (\ s a -> s{_vpBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vpKey :: Lens' VariantsetsPatch' (Maybe AuthKey)
vpKey = lens _vpKey (\ s a -> s{_vpKey = a})

-- | OAuth 2.0 token for the current user.
vpOAuthToken :: Lens' VariantsetsPatch' (Maybe OAuthToken)
vpOAuthToken
  = lens _vpOAuthToken (\ s a -> s{_vpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vpFields :: Lens' VariantsetsPatch' (Maybe Text)
vpFields = lens _vpFields (\ s a -> s{_vpFields = a})

-- | JSONP
vpCallback :: Lens' VariantsetsPatch' (Maybe Text)
vpCallback
  = lens _vpCallback (\ s a -> s{_vpCallback = a})

instance GoogleAuth VariantsetsPatch' where
        _AuthKey = vpKey . _Just
        _AuthToken = vpOAuthToken . _Just

instance GoogleRequest VariantsetsPatch' where
        type Rs VariantsetsPatch' = VariantSet
        request = requestWith genomicsRequest
        requestWith rq VariantsetsPatch'{..}
          = go _vpVariantSetId _vpXgafv _vpUploadProtocol
              _vpUpdateMask
              (Just _vpPp)
              _vpAccessToken
              _vpUploadType
              _vpBearerToken
              _vpCallback
              _vpQuotaUser
              (Just _vpPrettyPrint)
              _vpFields
              _vpKey
              _vpOAuthToken
              (Just AltJSON)
              _vpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy VariantsetsPatchResource)
                      rq
