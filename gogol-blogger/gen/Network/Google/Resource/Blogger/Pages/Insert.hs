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
-- Module      : Network.Google.Resource.Blogger.Pages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesInsert@.
module Network.Google.Resource.Blogger.Pages.Insert
    (
    -- * REST Resource
      PagesInsertResource

    -- * Creating a Request
    , pagesInsert'
    , PagesInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piIsDraft
    , piUserIP
    , piBlogId
    , piPayload
    , piKey
    , piOAuthToken
    , piFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesInsert@ which the
-- 'PagesInsert'' request conforms to.
type PagesInsertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           QueryParam "isDraft" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Page :> Post '[JSON] Page

-- | Add a page.
--
-- /See:/ 'pagesInsert'' smart constructor.
data PagesInsert' = PagesInsert'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piIsDraft     :: !(Maybe Bool)
    , _piUserIP      :: !(Maybe Text)
    , _piBlogId      :: !Text
    , _piPayload     :: !Page
    , _piKey         :: !(Maybe AuthKey)
    , _piOAuthToken  :: !(Maybe OAuthToken)
    , _piFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piIsDraft'
--
-- * 'piUserIP'
--
-- * 'piBlogId'
--
-- * 'piPayload'
--
-- * 'piKey'
--
-- * 'piOAuthToken'
--
-- * 'piFields'
pagesInsert'
    :: Text -- ^ 'blogId'
    -> Page -- ^ 'payload'
    -> PagesInsert'
pagesInsert' pPiBlogId_ pPiPayload_ =
    PagesInsert'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piIsDraft = Nothing
    , _piUserIP = Nothing
    , _piBlogId = pPiBlogId_
    , _piPayload = pPiPayload_
    , _piKey = Nothing
    , _piOAuthToken = Nothing
    , _piFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PagesInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PagesInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | Whether to create the page as a draft (default: false).
piIsDraft :: Lens' PagesInsert' (Maybe Bool)
piIsDraft
  = lens _piIsDraft (\ s a -> s{_piIsDraft = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIP :: Lens' PagesInsert' (Maybe Text)
piUserIP = lens _piUserIP (\ s a -> s{_piUserIP = a})

-- | ID of the blog to add the page to.
piBlogId :: Lens' PagesInsert' Text
piBlogId = lens _piBlogId (\ s a -> s{_piBlogId = a})

-- | Multipart request metadata.
piPayload :: Lens' PagesInsert' Page
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PagesInsert' (Maybe AuthKey)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOAuthToken :: Lens' PagesInsert' (Maybe OAuthToken)
piOAuthToken
  = lens _piOAuthToken (\ s a -> s{_piOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PagesInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

instance GoogleAuth PagesInsert' where
        authKey = piKey . _Just
        authToken = piOAuthToken . _Just

instance GoogleRequest PagesInsert' where
        type Rs PagesInsert' = Page
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesInsert'{..}
          = go _piBlogId _piIsDraft _piQuotaUser
              (Just _piPrettyPrint)
              _piUserIP
              _piFields
              _piKey
              _piOAuthToken
              (Just AltJSON)
              _piPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesInsertResource)
                      r
                      u
