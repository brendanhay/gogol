{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Style.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing style. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStylePatch@.
module Network.Google.Resource.FusionTables.Style.Patch
    (
    -- * REST Resource
      StylePatchResource

    -- * Creating a Request
    , stylePatch'
    , StylePatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spUserIP
    , spPayload
    , spKey
    , spStyleId
    , spOAuthToken
    , spTableId
    , spFields
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @FusiontablesStylePatch@ which the
-- 'StylePatch'' request conforms to.
type StylePatchResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] StyleSetting :>
                             Patch '[JSON] StyleSetting

-- | Updates an existing style. This method supports patch semantics.
--
-- /See:/ 'stylePatch'' smart constructor.
data StylePatch' = StylePatch'
    { _spQuotaUser :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spUserIP :: !(Maybe Text)
    , _spPayload :: !StyleSetting
    , _spKey :: !(Maybe Key)
    , _spStyleId :: !Int32
    , _spOAuthToken :: !(Maybe OAuthToken)
    , _spTableId :: !Text
    , _spFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StylePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spUserIP'
--
-- * 'spPayload'
--
-- * 'spKey'
--
-- * 'spStyleId'
--
-- * 'spOAuthToken'
--
-- * 'spTableId'
--
-- * 'spFields'
stylePatch'
    :: StyleSetting -- ^ 'payload'
    -> Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StylePatch'
stylePatch' pSpPayload_ pSpStyleId_ pSpTableId_ = 
    StylePatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spUserIP = Nothing
    , _spPayload = pSpPayload_
    , _spKey = Nothing
    , _spStyleId = pSpStyleId_
    , _spOAuthToken = Nothing
    , _spTableId = pSpTableId_
    , _spFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' StylePatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' StylePatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIP :: Lens' StylePatch' (Maybe Text)
spUserIP = lens _spUserIP (\ s a -> s{_spUserIP = a})

-- | Multipart request metadata.
spPayload :: Lens' StylePatch' StyleSetting
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' StylePatch' (Maybe Key)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Identifier (within a table) for the style being updated.
spStyleId :: Lens' StylePatch' Int32
spStyleId
  = lens _spStyleId (\ s a -> s{_spStyleId = a})

-- | OAuth 2.0 token for the current user.
spOAuthToken :: Lens' StylePatch' (Maybe OAuthToken)
spOAuthToken
  = lens _spOAuthToken (\ s a -> s{_spOAuthToken = a})

-- | Table whose style is being updated.
spTableId :: Lens' StylePatch' Text
spTableId
  = lens _spTableId (\ s a -> s{_spTableId = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' StylePatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

instance GoogleAuth StylePatch' where
        authKey = spKey . _Just
        authToken = spOAuthToken . _Just

instance GoogleRequest StylePatch' where
        type Rs StylePatch' = StyleSetting
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StylePatch'{..}
          = go _spTableId _spStyleId _spQuotaUser
              (Just _spPrettyPrint)
              _spUserIP
              _spFields
              _spKey
              _spOAuthToken
              (Just AltJSON)
              _spPayload
          where go
                  = clientWithRoute (Proxy :: Proxy StylePatchResource)
                      r
                      u
