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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsSearch@.
module Network.Google.Resource.Genomics.Variantsets.Search
    (
    -- * REST Resource
      VariantsetsSearchResource

    -- * Creating a Request
    , variantsetsSearch'
    , VariantsetsSearch'

    -- * Request Lenses
    , vQuotaUser
    , vPrettyPrint
    , vUserIp
    , vKey
    , vOauthToken
    , vFields
    , vAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsSearch@ which the
-- 'VariantsetsSearch'' request conforms to.
type VariantsetsSearchResource =
     "variantsets" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] SearchVariantSetsResponse

-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
--
-- /See:/ 'variantsetsSearch'' smart constructor.
data VariantsetsSearch' = VariantsetsSearch'
    { _vQuotaUser   :: !(Maybe Text)
    , _vPrettyPrint :: !Bool
    , _vUserIp      :: !(Maybe Text)
    , _vKey         :: !(Maybe Text)
    , _vOauthToken  :: !(Maybe Text)
    , _vFields      :: !(Maybe Text)
    , _vAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vQuotaUser'
--
-- * 'vPrettyPrint'
--
-- * 'vUserIp'
--
-- * 'vKey'
--
-- * 'vOauthToken'
--
-- * 'vFields'
--
-- * 'vAlt'
variantsetsSearch'
    :: VariantsetsSearch'
variantsetsSearch' =
    VariantsetsSearch'
    { _vQuotaUser = Nothing
    , _vPrettyPrint = True
    , _vUserIp = Nothing
    , _vKey = Nothing
    , _vOauthToken = Nothing
    , _vFields = Nothing
    , _vAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vQuotaUser :: Lens' VariantsetsSearch' (Maybe Text)
vQuotaUser
  = lens _vQuotaUser (\ s a -> s{_vQuotaUser = a})

-- | Returns response with indentations and line breaks.
vPrettyPrint :: Lens' VariantsetsSearch' Bool
vPrettyPrint
  = lens _vPrettyPrint (\ s a -> s{_vPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vUserIp :: Lens' VariantsetsSearch' (Maybe Text)
vUserIp = lens _vUserIp (\ s a -> s{_vUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vKey :: Lens' VariantsetsSearch' (Maybe Text)
vKey = lens _vKey (\ s a -> s{_vKey = a})

-- | OAuth 2.0 token for the current user.
vOauthToken :: Lens' VariantsetsSearch' (Maybe Text)
vOauthToken
  = lens _vOauthToken (\ s a -> s{_vOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vFields :: Lens' VariantsetsSearch' (Maybe Text)
vFields = lens _vFields (\ s a -> s{_vFields = a})

-- | Data format for the response.
vAlt :: Lens' VariantsetsSearch' Alt
vAlt = lens _vAlt (\ s a -> s{_vAlt = a})

instance GoogleRequest VariantsetsSearch' where
        type Rs VariantsetsSearch' =
             SearchVariantSetsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsSearch'{..}
          = go _vQuotaUser (Just _vPrettyPrint) _vUserIp _vKey
              _vOauthToken
              _vFields
              (Just _vAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsSearchResource)
                      r
                      u
