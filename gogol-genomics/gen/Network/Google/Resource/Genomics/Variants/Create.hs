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
-- Module      : Network.Google.Resource.Genomics.Variants.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsCreate@.
module Network.Google.Resource.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateResource

    -- * Creating a Request
    , variantsCreate'
    , VariantsCreate'

    -- * Request Lenses
    , varQuotaUser
    , varPrettyPrint
    , varUserIp
    , varKey
    , varOauthToken
    , varFields
    , varAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsCreate@ which the
-- 'VariantsCreate'' request conforms to.
type VariantsCreateResource =
     "variants" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Variant

-- | Creates a new variant.
--
-- /See:/ 'variantsCreate'' smart constructor.
data VariantsCreate' = VariantsCreate'
    { _varQuotaUser   :: !(Maybe Text)
    , _varPrettyPrint :: !Bool
    , _varUserIp      :: !(Maybe Text)
    , _varKey         :: !(Maybe Text)
    , _varOauthToken  :: !(Maybe Text)
    , _varFields      :: !(Maybe Text)
    , _varAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varQuotaUser'
--
-- * 'varPrettyPrint'
--
-- * 'varUserIp'
--
-- * 'varKey'
--
-- * 'varOauthToken'
--
-- * 'varFields'
--
-- * 'varAlt'
variantsCreate'
    :: VariantsCreate'
variantsCreate' =
    VariantsCreate'
    { _varQuotaUser = Nothing
    , _varPrettyPrint = True
    , _varUserIp = Nothing
    , _varKey = Nothing
    , _varOauthToken = Nothing
    , _varFields = Nothing
    , _varAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
varQuotaUser :: Lens' VariantsCreate' (Maybe Text)
varQuotaUser
  = lens _varQuotaUser (\ s a -> s{_varQuotaUser = a})

-- | Returns response with indentations and line breaks.
varPrettyPrint :: Lens' VariantsCreate' Bool
varPrettyPrint
  = lens _varPrettyPrint
      (\ s a -> s{_varPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
varUserIp :: Lens' VariantsCreate' (Maybe Text)
varUserIp
  = lens _varUserIp (\ s a -> s{_varUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
varKey :: Lens' VariantsCreate' (Maybe Text)
varKey = lens _varKey (\ s a -> s{_varKey = a})

-- | OAuth 2.0 token for the current user.
varOauthToken :: Lens' VariantsCreate' (Maybe Text)
varOauthToken
  = lens _varOauthToken
      (\ s a -> s{_varOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
varFields :: Lens' VariantsCreate' (Maybe Text)
varFields
  = lens _varFields (\ s a -> s{_varFields = a})

-- | Data format for the response.
varAlt :: Lens' VariantsCreate' Alt
varAlt = lens _varAlt (\ s a -> s{_varAlt = a})

instance GoogleRequest VariantsCreate' where
        type Rs VariantsCreate' = Variant
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsCreate'{..}
          = go _varQuotaUser (Just _varPrettyPrint) _varUserIp
              _varKey
              _varOauthToken
              _varFields
              (Just _varAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsCreateResource)
                      r
                      u
