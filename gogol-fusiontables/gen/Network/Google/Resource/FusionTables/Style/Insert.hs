{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , siUserIP
    , siPayload
    , siKey
    , siOAuthToken
    , siTableId
    , siFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] StyleSetting :>
                           Post '[JSON] StyleSetting

-- | Adds a new style for the table.
--
-- /See:/ 'styleInsert'' smart constructor.
data StyleInsert' = StyleInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIP      :: !(Maybe Text)
    , _siPayload     :: !StyleSetting
    , _siKey         :: !(Maybe Key)
    , _siOAuthToken  :: !(Maybe OAuthToken)
    , _siTableId     :: !Text
    , _siFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siPayload'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siTableId'
--
-- * 'siFields'
styleInsert'
    :: StyleSetting -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> StyleInsert'
styleInsert' pSiPayload_ pSiTableId_ =
    StyleInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siPayload = pSiPayload_
    , _siKey = Nothing
    , _siOAuthToken = Nothing
    , _siTableId = pSiTableId_
    , _siFields = Nothing
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
siUserIP :: Lens' StyleInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | Multipart request metadata.
siPayload :: Lens' StyleInsert' StyleSetting
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' StyleInsert' (Maybe Key)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' StyleInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Table for which a new style is being added
siTableId :: Lens' StyleInsert' Text
siTableId
  = lens _siTableId (\ s a -> s{_siTableId = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' StyleInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth StyleInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest StyleInsert' where
        type Rs StyleInsert' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleInsert'{..}
          = go _siTableId _siQuotaUser (Just _siPrettyPrint)
              _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StyleInsertResource)
                      r
                      u
