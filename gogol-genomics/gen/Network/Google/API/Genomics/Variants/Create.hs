{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variants.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variants.create@.
module Network.Google.API.Genomics.Variants.Create
    (
    -- * REST Resource
      VariantsCreateAPI

    -- * Creating a Request
    , variantsCreate'
    , VariantsCreate'

    -- * Request Lenses
    , vcQuotaUser
    , vcPrettyPrint
    , vcUserIp
    , vcKey
    , vcOauthToken
    , vcFields
    , vcAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variants.create which the
-- 'VariantsCreate'' request conforms to.
type VariantsCreateAPI =
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
    { _vcQuotaUser   :: !(Maybe Text)
    , _vcPrettyPrint :: !Bool
    , _vcUserIp      :: !(Maybe Text)
    , _vcKey         :: !(Maybe Text)
    , _vcOauthToken  :: !(Maybe Text)
    , _vcFields      :: !(Maybe Text)
    , _vcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcQuotaUser'
--
-- * 'vcPrettyPrint'
--
-- * 'vcUserIp'
--
-- * 'vcKey'
--
-- * 'vcOauthToken'
--
-- * 'vcFields'
--
-- * 'vcAlt'
variantsCreate'
    :: VariantsCreate'
variantsCreate' =
    VariantsCreate'
    { _vcQuotaUser = Nothing
    , _vcPrettyPrint = True
    , _vcUserIp = Nothing
    , _vcKey = Nothing
    , _vcOauthToken = Nothing
    , _vcFields = Nothing
    , _vcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vcQuotaUser :: Lens' VariantsCreate' (Maybe Text)
vcQuotaUser
  = lens _vcQuotaUser (\ s a -> s{_vcQuotaUser = a})

-- | Returns response with indentations and line breaks.
vcPrettyPrint :: Lens' VariantsCreate' Bool
vcPrettyPrint
  = lens _vcPrettyPrint
      (\ s a -> s{_vcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vcUserIp :: Lens' VariantsCreate' (Maybe Text)
vcUserIp = lens _vcUserIp (\ s a -> s{_vcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcKey :: Lens' VariantsCreate' (Maybe Text)
vcKey = lens _vcKey (\ s a -> s{_vcKey = a})

-- | OAuth 2.0 token for the current user.
vcOauthToken :: Lens' VariantsCreate' (Maybe Text)
vcOauthToken
  = lens _vcOauthToken (\ s a -> s{_vcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vcFields :: Lens' VariantsCreate' (Maybe Text)
vcFields = lens _vcFields (\ s a -> s{_vcFields = a})

-- | Data format for the response.
vcAlt :: Lens' VariantsCreate' Alt
vcAlt = lens _vcAlt (\ s a -> s{_vcAlt = a})

instance GoogleRequest VariantsCreate' where
        type Rs VariantsCreate' = Variant
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsCreate'{..}
          = go _vcQuotaUser (Just _vcPrettyPrint) _vcUserIp
              _vcKey
              _vcOauthToken
              _vcFields
              (Just _vcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VariantsCreateAPI)
                      r
                      u
