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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsCreate@.
module Network.Google.Resource.Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateResource

    -- * Creating a Request
    , variantsetsCreate'
    , VariantsetsCreate'

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

-- | A resource alias for @GenomicsVariantsetsCreate@ which the
-- 'VariantsetsCreate'' request conforms to.
type VariantsetsCreateResource =
     "variantsets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] VariantSet

-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ 'variantsetsCreate'' smart constructor.
data VariantsetsCreate' = VariantsetsCreate'
    { _vcQuotaUser   :: !(Maybe Text)
    , _vcPrettyPrint :: !Bool
    , _vcUserIp      :: !(Maybe Text)
    , _vcKey         :: !(Maybe Text)
    , _vcOauthToken  :: !(Maybe Text)
    , _vcFields      :: !(Maybe Text)
    , _vcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
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
variantsetsCreate'
    :: VariantsetsCreate'
variantsetsCreate' =
    VariantsetsCreate'
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
vcQuotaUser :: Lens' VariantsetsCreate' (Maybe Text)
vcQuotaUser
  = lens _vcQuotaUser (\ s a -> s{_vcQuotaUser = a})

-- | Returns response with indentations and line breaks.
vcPrettyPrint :: Lens' VariantsetsCreate' Bool
vcPrettyPrint
  = lens _vcPrettyPrint
      (\ s a -> s{_vcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vcUserIp :: Lens' VariantsetsCreate' (Maybe Text)
vcUserIp = lens _vcUserIp (\ s a -> s{_vcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcKey :: Lens' VariantsetsCreate' (Maybe Text)
vcKey = lens _vcKey (\ s a -> s{_vcKey = a})

-- | OAuth 2.0 token for the current user.
vcOauthToken :: Lens' VariantsetsCreate' (Maybe Text)
vcOauthToken
  = lens _vcOauthToken (\ s a -> s{_vcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vcFields :: Lens' VariantsetsCreate' (Maybe Text)
vcFields = lens _vcFields (\ s a -> s{_vcFields = a})

-- | Data format for the response.
vcAlt :: Lens' VariantsetsCreate' Alt
vcAlt = lens _vcAlt (\ s a -> s{_vcAlt = a})

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsCreate'{..}
          = go _vcQuotaUser (Just _vcPrettyPrint) _vcUserIp
              _vcKey
              _vcOauthToken
              _vcFields
              (Just _vcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsCreateResource)
                      r
                      u
