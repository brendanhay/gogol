{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsPatch@.
module Network.Google.Resource.Genomics.Variantsets.Patch
    (
    -- * REST Resource
      VariantsetsPatchResource

    -- * Creating a Request
    , variantsetsPatch'
    , VariantsetsPatch'

    -- * Request Lenses
    , vpQuotaUser
    , vpPrettyPrint
    , vpVariantSetId
    , vpUserIp
    , vpKey
    , vpOauthToken
    , vpFields
    , vpAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsPatch@ which the
-- 'VariantsetsPatch'' request conforms to.
type VariantsetsPatchResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] VariantSet

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored. This method supports patch semantics.
--
-- /See:/ 'variantsetsPatch'' smart constructor.
data VariantsetsPatch' = VariantsetsPatch'
    { _vpQuotaUser    :: !(Maybe Text)
    , _vpPrettyPrint  :: !Bool
    , _vpVariantSetId :: !Text
    , _vpUserIp       :: !(Maybe Text)
    , _vpKey          :: !(Maybe Text)
    , _vpOauthToken   :: !(Maybe Text)
    , _vpFields       :: !(Maybe Text)
    , _vpAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpQuotaUser'
--
-- * 'vpPrettyPrint'
--
-- * 'vpVariantSetId'
--
-- * 'vpUserIp'
--
-- * 'vpKey'
--
-- * 'vpOauthToken'
--
-- * 'vpFields'
--
-- * 'vpAlt'
variantsetsPatch'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsPatch'
variantsetsPatch' pVpVariantSetId_ =
    VariantsetsPatch'
    { _vpQuotaUser = Nothing
    , _vpPrettyPrint = True
    , _vpVariantSetId = pVpVariantSetId_
    , _vpUserIp = Nothing
    , _vpKey = Nothing
    , _vpOauthToken = Nothing
    , _vpFields = Nothing
    , _vpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vpQuotaUser :: Lens' VariantsetsPatch' (Maybe Text)
vpQuotaUser
  = lens _vpQuotaUser (\ s a -> s{_vpQuotaUser = a})

-- | Returns response with indentations and line breaks.
vpPrettyPrint :: Lens' VariantsetsPatch' Bool
vpPrettyPrint
  = lens _vpPrettyPrint
      (\ s a -> s{_vpPrettyPrint = a})

-- | The ID of the variant to be updated (must already exist).
vpVariantSetId :: Lens' VariantsetsPatch' Text
vpVariantSetId
  = lens _vpVariantSetId
      (\ s a -> s{_vpVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vpUserIp :: Lens' VariantsetsPatch' (Maybe Text)
vpUserIp = lens _vpUserIp (\ s a -> s{_vpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vpKey :: Lens' VariantsetsPatch' (Maybe Text)
vpKey = lens _vpKey (\ s a -> s{_vpKey = a})

-- | OAuth 2.0 token for the current user.
vpOauthToken :: Lens' VariantsetsPatch' (Maybe Text)
vpOauthToken
  = lens _vpOauthToken (\ s a -> s{_vpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vpFields :: Lens' VariantsetsPatch' (Maybe Text)
vpFields = lens _vpFields (\ s a -> s{_vpFields = a})

-- | Data format for the response.
vpAlt :: Lens' VariantsetsPatch' Alt
vpAlt = lens _vpAlt (\ s a -> s{_vpAlt = a})

instance GoogleRequest VariantsetsPatch' where
        type Rs VariantsetsPatch' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsPatch'{..}
          = go _vpQuotaUser (Just _vpPrettyPrint)
              _vpVariantSetId
              _vpUserIp
              _vpKey
              _vpOauthToken
              _vpFields
              (Just _vpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsPatchResource)
                      r
                      u
