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
-- Module      : Network.Google.Resource.Genomics.Variants.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant\'s names and info fields. All other modifications are
-- silently ignored. Returns the modified variant without its calls.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsUpdate@.
module Network.Google.Resource.Genomics.Variants.Update
    (
    -- * REST Resource
      VariantsUpdateResource

    -- * Creating a Request
    , variantsUpdate'
    , VariantsUpdate'

    -- * Request Lenses
    , vuQuotaUser
    , vuPrettyPrint
    , vuUserIp
    , vuKey
    , vuVariantId
    , vuOauthToken
    , vuFields
    , vuAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsUpdate@ which the
-- 'VariantsUpdate'' request conforms to.
type VariantsUpdateResource =
     "variants" :>
       Capture "variantId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Variant

-- | Updates a variant\'s names and info fields. All other modifications are
-- silently ignored. Returns the modified variant without its calls.
--
-- /See:/ 'variantsUpdate'' smart constructor.
data VariantsUpdate' = VariantsUpdate'
    { _vuQuotaUser   :: !(Maybe Text)
    , _vuPrettyPrint :: !Bool
    , _vuUserIp      :: !(Maybe Text)
    , _vuKey         :: !(Maybe Text)
    , _vuVariantId   :: !Text
    , _vuOauthToken  :: !(Maybe Text)
    , _vuFields      :: !(Maybe Text)
    , _vuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuQuotaUser'
--
-- * 'vuPrettyPrint'
--
-- * 'vuUserIp'
--
-- * 'vuKey'
--
-- * 'vuVariantId'
--
-- * 'vuOauthToken'
--
-- * 'vuFields'
--
-- * 'vuAlt'
variantsUpdate'
    :: Text -- ^ 'variantId'
    -> VariantsUpdate'
variantsUpdate' pVuVariantId_ =
    VariantsUpdate'
    { _vuQuotaUser = Nothing
    , _vuPrettyPrint = True
    , _vuUserIp = Nothing
    , _vuKey = Nothing
    , _vuVariantId = pVuVariantId_
    , _vuOauthToken = Nothing
    , _vuFields = Nothing
    , _vuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuQuotaUser :: Lens' VariantsUpdate' (Maybe Text)
vuQuotaUser
  = lens _vuQuotaUser (\ s a -> s{_vuQuotaUser = a})

-- | Returns response with indentations and line breaks.
vuPrettyPrint :: Lens' VariantsUpdate' Bool
vuPrettyPrint
  = lens _vuPrettyPrint
      (\ s a -> s{_vuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuUserIp :: Lens' VariantsUpdate' (Maybe Text)
vuUserIp = lens _vuUserIp (\ s a -> s{_vuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuKey :: Lens' VariantsUpdate' (Maybe Text)
vuKey = lens _vuKey (\ s a -> s{_vuKey = a})

-- | The ID of the variant to be updated.
vuVariantId :: Lens' VariantsUpdate' Text
vuVariantId
  = lens _vuVariantId (\ s a -> s{_vuVariantId = a})

-- | OAuth 2.0 token for the current user.
vuOauthToken :: Lens' VariantsUpdate' (Maybe Text)
vuOauthToken
  = lens _vuOauthToken (\ s a -> s{_vuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vuFields :: Lens' VariantsUpdate' (Maybe Text)
vuFields = lens _vuFields (\ s a -> s{_vuFields = a})

-- | Data format for the response.
vuAlt :: Lens' VariantsUpdate' Alt
vuAlt = lens _vuAlt (\ s a -> s{_vuAlt = a})

instance GoogleRequest VariantsUpdate' where
        type Rs VariantsUpdate' = Variant
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsUpdate'{..}
          = go _vuQuotaUser (Just _vuPrettyPrint) _vuUserIp
              _vuKey
              _vuVariantId
              _vuOauthToken
              _vuFields
              (Just _vuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsUpdateResource)
                      r
                      u
