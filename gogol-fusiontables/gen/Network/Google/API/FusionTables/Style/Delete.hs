{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Style.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.delete@.
module Network.Google.API.FusionTables.Style.Delete
    (
    -- * REST Resource
      StyleDeleteAPI

    -- * Creating a Request
    , styleDelete'
    , StyleDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdKey
    , sdStyleId
    , sdOauthToken
    , sdTableId
    , sdFields
    , sdAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.style.delete which the
-- 'StyleDelete'' request conforms to.
type StyleDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a style.
--
-- /See:/ 'styleDelete'' smart constructor.
data StyleDelete' = StyleDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdKey         :: !(Maybe Text)
    , _sdStyleId     :: !Int32
    , _sdOauthToken  :: !(Maybe Text)
    , _sdTableId     :: !Text
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIp'
--
-- * 'sdKey'
--
-- * 'sdStyleId'
--
-- * 'sdOauthToken'
--
-- * 'sdTableId'
--
-- * 'sdFields'
--
-- * 'sdAlt'
styleDelete'
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleDelete'
styleDelete' pSdStyleId_ pSdTableId_ =
    StyleDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdKey = Nothing
    , _sdStyleId = pSdStyleId_
    , _sdOauthToken = Nothing
    , _sdTableId = pSdTableId_
    , _sdFields = Nothing
    , _sdAlt = JSON
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
sdUserIp :: Lens' StyleDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' StyleDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | Identifier (within a table) for the style being deleted
sdStyleId :: Lens' StyleDelete' Int32
sdStyleId
  = lens _sdStyleId (\ s a -> s{_sdStyleId = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' StyleDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Table from which the style is being deleted
sdTableId :: Lens' StyleDelete' Text
sdTableId
  = lens _sdTableId (\ s a -> s{_sdTableId = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' StyleDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' StyleDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest StyleDelete' where
        type Rs StyleDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u StyleDelete'{..}
          = go _sdQuotaUser (Just _sdPrettyPrint) _sdUserIp
              _sdKey
              _sdStyleId
              _sdOauthToken
              _sdTableId
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StyleDeleteAPI) r u
