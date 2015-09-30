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
-- Module      : Network.Google.Resource.Blogger.Pages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesDelete@.
module Network.Google.Resource.Blogger.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteResource

    -- * Creating a Request
    , pagesDelete'
    , PagesDelete'

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddUserIp
    , pddBlogId
    , pddPageId
    , pddKey
    , pddOauthToken
    , pddFields
    , pddAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesDelete@ which the
-- 'PagesDelete'' request conforms to.
type PagesDeleteResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a page by ID.
--
-- /See:/ 'pagesDelete'' smart constructor.
data PagesDelete' = PagesDelete'
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddUserIp      :: !(Maybe Text)
    , _pddBlogId      :: !Text
    , _pddPageId      :: !Text
    , _pddKey         :: !(Maybe Text)
    , _pddOauthToken  :: !(Maybe Text)
    , _pddFields      :: !(Maybe Text)
    , _pddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIp'
--
-- * 'pddBlogId'
--
-- * 'pddPageId'
--
-- * 'pddKey'
--
-- * 'pddOauthToken'
--
-- * 'pddFields'
--
-- * 'pddAlt'
pagesDelete'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesDelete'
pagesDelete' pPddBlogId_ pPddPageId_ =
    PagesDelete'
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIp = Nothing
    , _pddBlogId = pPddBlogId_
    , _pddPageId = pPddPageId_
    , _pddKey = Nothing
    , _pddOauthToken = Nothing
    , _pddFields = Nothing
    , _pddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' PagesDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' PagesDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIp :: Lens' PagesDelete' (Maybe Text)
pddUserIp
  = lens _pddUserIp (\ s a -> s{_pddUserIp = a})

-- | The ID of the Blog.
pddBlogId :: Lens' PagesDelete' Text
pddBlogId
  = lens _pddBlogId (\ s a -> s{_pddBlogId = a})

-- | The ID of the Page.
pddPageId :: Lens' PagesDelete' Text
pddPageId
  = lens _pddPageId (\ s a -> s{_pddPageId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' PagesDelete' (Maybe Text)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | OAuth 2.0 token for the current user.
pddOauthToken :: Lens' PagesDelete' (Maybe Text)
pddOauthToken
  = lens _pddOauthToken
      (\ s a -> s{_pddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' PagesDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

-- | Data format for the response.
pddAlt :: Lens' PagesDelete' Alt
pddAlt = lens _pddAlt (\ s a -> s{_pddAlt = a})

instance GoogleRequest PagesDelete' where
        type Rs PagesDelete' = ()
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesDelete'{..}
          = go _pddQuotaUser (Just _pddPrettyPrint) _pddUserIp
              _pddBlogId
              _pddPageId
              _pddKey
              _pddOauthToken
              _pddFields
              (Just _pddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PagesDeleteResource)
                      r
                      u
