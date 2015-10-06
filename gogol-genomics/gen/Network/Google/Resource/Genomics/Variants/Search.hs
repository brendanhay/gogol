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
-- Module      : Network.Google.Resource.Genomics.Variants.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsSearch@.
module Network.Google.Resource.Genomics.Variants.Search
    (
    -- * REST Resource
      VariantsSearchResource

    -- * Creating a Request
    , variantsSearch'
    , VariantsSearch'

    -- * Request Lenses
    , vsQuotaUser
    , vsPrettyPrint
    , vsUserIP
    , vsPayload
    , vsKey
    , vsOAuthToken
    , vsFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsSearch@ which the
-- 'VariantsSearch'' request conforms to.
type VariantsSearchResource =
     "variants" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchVariantsRequest :>
                         Post '[JSON] SearchVariantsResponse

-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
--
-- /See:/ 'variantsSearch'' smart constructor.
data VariantsSearch' = VariantsSearch'
    { _vsQuotaUser   :: !(Maybe Text)
    , _vsPrettyPrint :: !Bool
    , _vsUserIP      :: !(Maybe Text)
    , _vsPayload     :: !SearchVariantsRequest
    , _vsKey         :: !(Maybe AuthKey)
    , _vsOAuthToken  :: !(Maybe OAuthToken)
    , _vsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsQuotaUser'
--
-- * 'vsPrettyPrint'
--
-- * 'vsUserIP'
--
-- * 'vsPayload'
--
-- * 'vsKey'
--
-- * 'vsOAuthToken'
--
-- * 'vsFields'
variantsSearch'
    :: SearchVariantsRequest -- ^ 'payload'
    -> VariantsSearch'
variantsSearch' pVsPayload_ =
    VariantsSearch'
    { _vsQuotaUser = Nothing
    , _vsPrettyPrint = True
    , _vsUserIP = Nothing
    , _vsPayload = pVsPayload_
    , _vsKey = Nothing
    , _vsOAuthToken = Nothing
    , _vsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vsQuotaUser :: Lens' VariantsSearch' (Maybe Text)
vsQuotaUser
  = lens _vsQuotaUser (\ s a -> s{_vsQuotaUser = a})

-- | Returns response with indentations and line breaks.
vsPrettyPrint :: Lens' VariantsSearch' Bool
vsPrettyPrint
  = lens _vsPrettyPrint
      (\ s a -> s{_vsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vsUserIP :: Lens' VariantsSearch' (Maybe Text)
vsUserIP = lens _vsUserIP (\ s a -> s{_vsUserIP = a})

-- | Multipart request metadata.
vsPayload :: Lens' VariantsSearch' SearchVariantsRequest
vsPayload
  = lens _vsPayload (\ s a -> s{_vsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vsKey :: Lens' VariantsSearch' (Maybe AuthKey)
vsKey = lens _vsKey (\ s a -> s{_vsKey = a})

-- | OAuth 2.0 token for the current user.
vsOAuthToken :: Lens' VariantsSearch' (Maybe OAuthToken)
vsOAuthToken
  = lens _vsOAuthToken (\ s a -> s{_vsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vsFields :: Lens' VariantsSearch' (Maybe Text)
vsFields = lens _vsFields (\ s a -> s{_vsFields = a})

instance GoogleAuth VariantsSearch' where
        authKey = vsKey . _Just
        authToken = vsOAuthToken . _Just

instance GoogleRequest VariantsSearch' where
        type Rs VariantsSearch' = SearchVariantsResponse
        request = requestWith genomicsRequest
        requestWith rq VariantsSearch'{..}
          = go _vsQuotaUser (Just _vsPrettyPrint) _vsUserIP
              _vsFields
              _vsKey
              _vsOAuthToken
              (Just AltJSON)
              _vsPayload
          where go
                  = clientBuild (Proxy :: Proxy VariantsSearchResource)
                      rq
