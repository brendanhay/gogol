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
-- Module      : Network.Google.Resource.FusionTables.Style.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleDelete@.
module Network.Google.Resource.FusionTables.Style.Delete
    (
    -- * REST Resource
      StyleDeleteResource

    -- * Creating a Request
    , styleDelete'
    , StyleDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIP
    , sdKey
    , sdStyleId
    , sdOAuthToken
    , sdTableId
    , sdFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleDelete@ which the
-- 'StyleDelete'' request conforms to.
type StyleDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a style.
--
-- /See:/ 'styleDelete'' smart constructor.
data StyleDelete' = StyleDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIP      :: !(Maybe Text)
    , _sdKey         :: !(Maybe AuthKey)
    , _sdStyleId     :: !Int32
    , _sdOAuthToken  :: !(Maybe OAuthToken)
    , _sdTableId     :: !Text
    , _sdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIP'
--
-- * 'sdKey'
--
-- * 'sdStyleId'
--
-- * 'sdOAuthToken'
--
-- * 'sdTableId'
--
-- * 'sdFields'
styleDelete'
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleDelete'
styleDelete' pSdStyleId_ pSdTableId_ =
    StyleDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIP = Nothing
    , _sdKey = Nothing
    , _sdStyleId = pSdStyleId_
    , _sdOAuthToken = Nothing
    , _sdTableId = pSdTableId_
    , _sdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' StyleDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' StyleDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIP :: Lens' StyleDelete' (Maybe Text)
sdUserIP = lens _sdUserIP (\ s a -> s{_sdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' StyleDelete' (Maybe AuthKey)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | Identifier (within a table) for the style being deleted
sdStyleId :: Lens' StyleDelete' Int32
sdStyleId
  = lens _sdStyleId (\ s a -> s{_sdStyleId = a})

-- | OAuth 2.0 token for the current user.
sdOAuthToken :: Lens' StyleDelete' (Maybe OAuthToken)
sdOAuthToken
  = lens _sdOAuthToken (\ s a -> s{_sdOAuthToken = a})

-- | Table from which the style is being deleted
sdTableId :: Lens' StyleDelete' Text
sdTableId
  = lens _sdTableId (\ s a -> s{_sdTableId = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' StyleDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

instance GoogleAuth StyleDelete' where
        authKey = sdKey . _Just
        authToken = sdOAuthToken . _Just

instance GoogleRequest StyleDelete' where
        type Rs StyleDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleDelete'{..}
          = go _sdTableId _sdStyleId _sdQuotaUser
              (Just _sdPrettyPrint)
              _sdUserIP
              _sdFields
              _sdKey
              _sdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StyleDeleteResource)
                      r
                      u
