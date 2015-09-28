{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.delete@.
module Network.Google.API.Genomics.Variantsets.Delete
    (
    -- * REST Resource
      VariantsetsDeleteAPI

    -- * Creating a Request
    , variantsetsDelete'
    , VariantsetsDelete'

    -- * Request Lenses
    , varQuotaUser
    , varPrettyPrint
    , varVariantSetId
    , varUserIp
    , varKey
    , varOauthToken
    , varFields
    , varAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variantsets.delete which the
-- 'VariantsetsDelete'' request conforms to.
type VariantsetsDeleteAPI =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ 'variantsetsDelete'' smart constructor.
data VariantsetsDelete' = VariantsetsDelete'
    { _varQuotaUser    :: !(Maybe Text)
    , _varPrettyPrint  :: !Bool
    , _varVariantSetId :: !Text
    , _varUserIp       :: !(Maybe Text)
    , _varKey          :: !(Maybe Text)
    , _varOauthToken   :: !(Maybe Text)
    , _varFields       :: !(Maybe Text)
    , _varAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varQuotaUser'
--
-- * 'varPrettyPrint'
--
-- * 'varVariantSetId'
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
variantsetsDelete'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsDelete'
variantsetsDelete' pVarVariantSetId_ =
    VariantsetsDelete'
    { _varQuotaUser = Nothing
    , _varPrettyPrint = True
    , _varVariantSetId = pVarVariantSetId_
    , _varUserIp = Nothing
    , _varKey = Nothing
    , _varOauthToken = Nothing
    , _varFields = Nothing
    , _varAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
varQuotaUser :: Lens' VariantsetsDelete' (Maybe Text)
varQuotaUser
  = lens _varQuotaUser (\ s a -> s{_varQuotaUser = a})

-- | Returns response with indentations and line breaks.
varPrettyPrint :: Lens' VariantsetsDelete' Bool
varPrettyPrint
  = lens _varPrettyPrint
      (\ s a -> s{_varPrettyPrint = a})

-- | The ID of the variant set to be deleted.
varVariantSetId :: Lens' VariantsetsDelete' Text
varVariantSetId
  = lens _varVariantSetId
      (\ s a -> s{_varVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
varUserIp :: Lens' VariantsetsDelete' (Maybe Text)
varUserIp
  = lens _varUserIp (\ s a -> s{_varUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
varKey :: Lens' VariantsetsDelete' (Maybe Text)
varKey = lens _varKey (\ s a -> s{_varKey = a})

-- | OAuth 2.0 token for the current user.
varOauthToken :: Lens' VariantsetsDelete' (Maybe Text)
varOauthToken
  = lens _varOauthToken
      (\ s a -> s{_varOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
varFields :: Lens' VariantsetsDelete' (Maybe Text)
varFields
  = lens _varFields (\ s a -> s{_varFields = a})

-- | Data format for the response.
varAlt :: Lens' VariantsetsDelete' Alt
varAlt = lens _varAlt (\ s a -> s{_varAlt = a})

instance GoogleRequest VariantsetsDelete' where
        type Rs VariantsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsDelete'{..}
          = go _varQuotaUser (Just _varPrettyPrint)
              _varVariantSetId
              _varUserIp
              _varKey
              _varOauthToken
              _varFields
              (Just _varAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsDeleteAPI)
                      r
                      u
