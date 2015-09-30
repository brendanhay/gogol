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
-- Module      : Network.Google.Resource.FusionTables.Style.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new style for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleInsert@.
module Network.Google.Resource.FusionTables.Style.Insert
    (
    -- * REST Resource
      StyleInsertResource

    -- * Creating a Request
    , styleInsert'
    , StyleInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIp
    , siKey
    , siOauthToken
    , siTableId
    , siFields
    , siAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleInsert@ which the
-- 'StyleInsert'' request conforms to.
type StyleInsertResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] StyleSetting

-- | Adds a new style for the table.
--
-- /See:/ 'styleInsert'' smart constructor.
data StyleInsert' = StyleInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIp      :: !(Maybe Text)
    , _siKey         :: !(Maybe Text)
    , _siOauthToken  :: !(Maybe Text)
    , _siTableId     :: !Text
    , _siFields      :: !(Maybe Text)
    , _siAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIp'
--
-- * 'siKey'
--
-- * 'siOauthToken'
--
-- * 'siTableId'
--
-- * 'siFields'
--
-- * 'siAlt'
styleInsert'
    :: Text -- ^ 'tableId'
    -> StyleInsert'
styleInsert' pSiTableId_ =
    StyleInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIp = Nothing
    , _siKey = Nothing
    , _siOauthToken = Nothing
    , _siTableId = pSiTableId_
    , _siFields = Nothing
    , _siAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' StyleInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' StyleInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIp :: Lens' StyleInsert' (Maybe Text)
siUserIp = lens _siUserIp (\ s a -> s{_siUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' StyleInsert' (Maybe Text)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOauthToken :: Lens' StyleInsert' (Maybe Text)
siOauthToken
  = lens _siOauthToken (\ s a -> s{_siOauthToken = a})

-- | Table for which a new style is being added
siTableId :: Lens' StyleInsert' Text
siTableId
  = lens _siTableId (\ s a -> s{_siTableId = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' StyleInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

-- | Data format for the response.
siAlt :: Lens' StyleInsert' Alt
siAlt = lens _siAlt (\ s a -> s{_siAlt = a})

instance GoogleRequest StyleInsert' where
        type Rs StyleInsert' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleInsert'{..}
          = go _siQuotaUser (Just _siPrettyPrint) _siUserIp
              _siKey
              _siOauthToken
              _siTableId
              _siFields
              (Just _siAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StyleInsertResource)
                      r
                      u
