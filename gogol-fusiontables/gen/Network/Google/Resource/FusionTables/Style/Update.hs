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
-- Module      : Network.Google.Resource.FusionTables.Style.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleUpdate@.
module Network.Google.Resource.FusionTables.Style.Update
    (
    -- * REST Resource
      StyleUpdateResource

    -- * Creating a Request
    , styleUpdate'
    , StyleUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suKey
    , suStyleId
    , suOauthToken
    , suTableId
    , suFields
    , suAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleUpdate@ which the
-- 'StyleUpdate'' request conforms to.
type StyleUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] StyleSetting

-- | Updates an existing style.
--
-- /See:/ 'styleUpdate'' smart constructor.
data StyleUpdate' = StyleUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIp      :: !(Maybe Text)
    , _suKey         :: !(Maybe Text)
    , _suStyleId     :: !Int32
    , _suOauthToken  :: !(Maybe Text)
    , _suTableId     :: !Text
    , _suFields      :: !(Maybe Text)
    , _suAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suKey'
--
-- * 'suStyleId'
--
-- * 'suOauthToken'
--
-- * 'suTableId'
--
-- * 'suFields'
--
-- * 'suAlt'
styleUpdate'
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleUpdate'
styleUpdate' pSuStyleId_ pSuTableId_ =
    StyleUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suKey = Nothing
    , _suStyleId = pSuStyleId_
    , _suOauthToken = Nothing
    , _suTableId = pSuTableId_
    , _suFields = Nothing
    , _suAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' StyleUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' StyleUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIp :: Lens' StyleUpdate' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' StyleUpdate' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | Identifier (within a table) for the style being updated.
suStyleId :: Lens' StyleUpdate' Int32
suStyleId
  = lens _suStyleId (\ s a -> s{_suStyleId = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' StyleUpdate' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Table whose style is being updated.
suTableId :: Lens' StyleUpdate' Text
suTableId
  = lens _suTableId (\ s a -> s{_suTableId = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' StyleUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' StyleUpdate' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest StyleUpdate' where
        type Rs StyleUpdate' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleUpdate'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIp
              _suKey
              _suStyleId
              _suOauthToken
              _suTableId
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StyleUpdateResource)
                      r
                      u
